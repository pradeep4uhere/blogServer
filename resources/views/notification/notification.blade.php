@foreach($notificationArr as $noteObj)
@foreach($noteObj as $note)
<?php $noteStr = unserialize($note);?>
<p>{{$noteStr['body']}}</p>
@endforeach
@endforeach

