<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\BroadcastMessage;


class Seller extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($user)
    {
        $this->name = $user['name'];
        $this->email = $user['email'];
        $this->user_id = $user['id'];
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail','database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $url = url('http://www.stafforini.com/docs/Covey%20-%20The%207%20habits%20of%20highly%20effective%20people.pdf');
        $copyright = '&copyright 2018 GrabeMoreNow. All rights reserved.';
        $body = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum pa";
        $filename = asset('storage/people.pdf');
         return (new MailMessage)->view(
            'Email.seller.register', [
                'name' => ucwords($this->name),
                'copyright'=>$copyright,
                'url'=>$url,
                'body'=>$body
            ]
        )->attach($filename, [
                        'as' => 'ebook.pdf',
                        'mime' => 'application/pdf',
                    ]);
        /*return (new MailMessage)
                    ->greeting('Hello '.ucwords($this->name).' !')
                    ->subject('New Seller Registred')
                    ->line('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
                    ->action('View Profile', url('/'))
                    ->line('Thank you for using our application!');
                    //->markdown('Email.seller.register', ['url' => $url]);
       */
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        $data = [
            'name'=>$this->name,
            'body'=>'This is new Body',
            'attachment'=>asset('storage/people.pdf')
        ];
        return [
            'data'=>serialize($data)
        ];
    }


    /**
     * Get the broadcastable representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return BroadcastMessage
     */
    public function toBroadcast($notifiable)
    {
        return new BroadcastMessage([
            'invoice_id' => '1001',
            'amount' => '$2000',
        ]);
    }
}
