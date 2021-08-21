import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';


void main() {
  //print ("Hello!");
  runApp(HotR());
}

 void printb(){
  print("Button Pressed!");
 }

 void ontapp(){
   print("Clicked");
 }
 var checker =0;
final cache = AudioCache();
final ply = AudioPlayer();
AudioPlayer player;
Tst(String alert){
  Fluttertoast.showToast(
      msg: alert,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0
  );

}
void _playFile(String musicname) async{
  if(checker==0){
  player = await cache.play(musicname); }
  Tst("Audio playing");
  checker =1;// assign player here
}
void _pauseFile() async{
  if(checker ==1){
    player?.pause();
  }
  player?.pause();
  Tst("Audio paused");
  checker = 0;// assign player here
}
void _resumeFile() async{
  if(checker ==0) {
    player?.resume();
  }
  checker =1;
  Tst("Audio resumed!");
}
void _stopFile() {
  if(checker == 1){
  player?.stop();
  }
  //player?.stop(); // stop the file like this
  checker =0;
  Tst("Audio Stopped!");

}


/* Future<void> assetplay(String musicname) async {
   print("Inside asset play");
   if(checker==0){
     _playFile(musicname);
     checker =1;
   }else{
     _stopFile(musicname);
     checker =0;
   }

 }

 */



 myapp() {
  var vh = 300.0;
  var vw = 300.0;
  var aw = 220.0;

  var mybody = Stack(
    overflow: Overflow.clip,
    fit: StackFit.passthrough,
    children:
        <Widget>[
          ClipPath(
            clipper : Myclipper(),
            child: Padding(
             padding: EdgeInsets.all(0),
             child: Container(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            color: Colors.red,
            //borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                image: NetworkImage('https://raw.githubusercontent.com/SalikSayyed/staticimages/master/mountain.jpg'),
                fit: BoxFit.cover),
          ),

      ),
  ),
  ),
          Positioned(
              top: 15,
              left: 150,
              child: Text("Enjoy Music:",textAlign: TextAlign.right,style: TextStyle(fontSize: 30,color: Colors.black),
              ),
          ),
          Positioned(
            top: 55,
            left: 0,
          child: Container(
            width: aw+200,
            height:200,
            decoration: BoxDecoration(
              shape:BoxShape.rectangle,
              //borderRadius:
            ),
            child: ListView(
              padding: EdgeInsets.fromLTRB(0.8, 0.0, 0.8, 0.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  height: 200,
                  width: aw,
                  color:Colors.red,
                  child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn5.jpg',fit: BoxFit.fitHeight,),),Positioned(top:110,left:20,child: Row(children:<Widget>[IconButton(icon: Icon(Icons.play_arrow,size: 40,color: Colors.red,),onPressed: () => _playFile('stevewonder.mp3'),),IconButton(icon: Icon(Icons.pause,size: 40,),onPressed: () => _pauseFile(),),IconButton(icon: Icon(Icons.restore,size: 40,),onPressed: () => _resumeFile(),),IconButton(icon: Icon(Icons.stop,size: 40,color:Colors.redAccent,),onPressed: () => _stopFile(),),],)),Positioned(top:5,left :33,child:Text("Steve Wonder",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                ),
                Container(
                  height: 200,
                  width: aw,
                  color: Colors.blue,
                  child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn4.jpg',fit: BoxFit.fitHeight,),),Positioned(top:110,left:20,child: Row(children:<Widget>[IconButton(icon: Icon(Icons.play_arrow,size: 40,color:Colors.red,),onPressed: () => _playFile('stevejobs.mp3'),),IconButton(icon: Icon(Icons.pause,size: 40,),onPressed: () => _pauseFile(),),IconButton(icon: Icon(Icons.restore,size: 40,),onPressed: () => _resumeFile(),),IconButton(icon: Icon(Icons.stop,size: 40,color:Colors.redAccent,),onPressed: () => _stopFile(),),],)),Positioned(top:5,left :33,child:Text("Steve Jobs",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                  //child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn4.jpg',fit: BoxFit.fitHeight,),),IconButton(icon: Icon(Icons.play_arrow,size :20),onPressed: () => assetplay('stevewonder.mp3'),),Positioned(top:5,left :33,child:Text("MissingLink",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                ),
                Container(
                  height: 200,
                  width: aw,
                  color: Colors.white,
                  child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn1.jpg',fit: BoxFit.fitHeight,),),Positioned(top:110,left:20,child: Row(children:<Widget>[IconButton(icon: Icon(Icons.play_arrow,size: 40,color:Colors.red,),onPressed: () => _playFile('stevewonder.mp3'),),IconButton(icon: Icon(Icons.pause,size: 40,),onPressed: () => _pauseFile(),),IconButton(icon: Icon(Icons.restore,size: 40,),onPressed: () => _resumeFile(),),IconButton(icon: Icon(Icons.stop,size: 40,color:Colors.redAccent,),onPressed: () => _stopFile(),),],)),Positioned(top:5,left :33,child:Text("stevewonder",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                  //child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn1.jpg',fit: BoxFit.fitHeight,),),IconButton(icon: Icon(Icons.play_arrow,size :20),onPressed: () => assetplay('stevewonder.mp3'),),Positioned(top:5,left :33,child:Text("solomonsorbital",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn2.jpg',fit: BoxFit.fitHeight,),),Positioned(top:110,left:20,child: Row(children:<Widget>[IconButton(icon: Icon(Icons.play_arrow,size: 40,color:Colors.red,),onPressed: () => _playFile('stevewonder.mp3'),),IconButton(icon: Icon(Icons.pause,size: 40,),onPressed: () => _pauseFile(),),IconButton(icon: Icon(Icons.restore,size: 40,),onPressed: () => _resumeFile(),),IconButton(icon: Icon(Icons.stop,size: 40,color:Colors.redAccent,),onPressed: () => _stopFile(),),],)),Positioned(top:5,left :33,child:Text("stevewonder",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                  //child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn2.jpg',fit: BoxFit.fitHeight,),),IconButton(icon: Icon(Icons.play_arrow,size :20),onPressed: () => assetplay('stevewonder.mp3'),),Positioned(top:5,left :33,child:Text("7Habits",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                ),
                Container(
                  height: 200,
                  width: aw,
                  color: Colors.yellow,
                  child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn3.jpg',fit: BoxFit.fitHeight,),),Positioned(top:110,left:20,child: Row(children:<Widget>[IconButton(icon: Icon(Icons.play_arrow,size: 40,color:Colors.red,),onPressed: () => _playFile('stevewonder.mp3'),),IconButton(icon: Icon(Icons.pause,size: 40,),onPressed: () => _pauseFile(),),IconButton(icon: Icon(Icons.restore,size: 40,),onPressed: () => _resumeFile(),),IconButton(icon: Icon(Icons.stop,size: 40,color:Colors.redAccent,),onPressed: () => _stopFile(),),],)),Positioned(top:5,left :33,child:Text("stevewonder",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                  //child: Stack(children:<Widget>[Container(height: 200,width: aw,child:Image.asset('images/mn3.jpg',fit: BoxFit.fitHeight,),),IconButton(icon: Icon(Icons.play_arrow,size :20),onPressed: () => assetplay('stevewonder.mp3'),),Positioned(top:5,left :33,child:Text("SteveWonder",style:TextStyle(color:Colors.white,fontSize: 20),),)],),
                ),
              ],
            ),
          ),
          ),
          Positioned(
            top:254,
            left: 75,
            child: Text("Awesome Videos :",textAlign: TextAlign.right,style: TextStyle(fontSize: 35,color: Colors.black),
            ),
          ),
          Positioned(
            top: 300,
            left: -15,
            child: Container(
              width: vw+200,
              height: vh - 50,
              child: ListView(
                padding: EdgeInsets.fromLTRB(0.3, 0.0, 0.3, 0.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: vh,
                    width: vw+190,
                    color:Colors.red,
                    child: VideoApp('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4'),
                  ),
                  Container(
                    height: vh,
                    width: vw+190,
                    color:Colors.white,
                    child: VideoApp('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4')

                  ),
                  Container(
                    height: vh,
                    width: vw+190,
                    color:Colors.green,
                    child: VideoApp('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4'),

                  ),
                  Container(
                    height: vh,
                    width: vw+190,
                    color:Colors.blue,
                      child: VideoApp('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4')
                  ),
                  Container(
                      height: vh,
                      width: vw+190,
                      color:Colors.blue,
                      child: VideoApp('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4')

                  ),
                ],
              ),
            ),
          ),
   ],
  );

  var myhome = Scaffold(

    backgroundColor: Colors.purpleAccent.shade200,
    appBar: AppBar(
     title: Text('PINK MEDIA PLAYER....from Salik'),
      backgroundColor: Colors.purpleAccent.shade200,
    ),
    body:  mybody,
    /*bottomNavigationBar: Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(color: Colors.orange,),
            Container(color: Colors.green,),
          ],
        ),
      ),
    ),*/

  );
  return MaterialApp(home : myhome,debugShowCheckedModeBanner: false,);
}

class Myclipper
    extends CustomClipper<Path>{
   @override
   Path getClip(Size size){
     var path = new Path();
     /*path.lineTo(0, 40);
     path.lineTo(40,200);
     path.lineTo(200,600);
     path.lineTo(300,450);
     path.quadraticBezierTo(300,size.height,size.width,size.height);*/
     path.lineTo(0,size.height/2-15);
     var controlPoint = Offset(50,size.height/2);
     var endpoint =Offset(size.width/2,size.height/2+20);
     path.quadraticBezierTo(controlPoint.dx,controlPoint.dy,endpoint.dx, endpoint.dy);
     var ctp = Offset(300,size.height+20);
     var endp= Offset(size.width,size.height-20);
     path.quadraticBezierTo(ctp.dx,ctp.dy,endp.dx,endp.dy);
     path.lineTo(size.width,0);
     //path.lineTo(300,0);
     return path;
   }
   @override
   bool shouldReclip(oldClipper) => true;

}
/*
class SamplePlayer extends StatefulWidget {
  SamplePlayer({Key key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network("url"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlickVideoPlayer(
          flickManager: flickManager
      ),
    );
  }
}
*/

class HotR extends StatelessWidget{
  @override
  build (BuildContext c1) {
    return myapp();
  }
}

class VideoApp extends StatefulWidget {
  String neturl;
  VideoApp(String neturl){
    this.neturl = neturl;
  }
  @override
  _VideoAppState createState() => _VideoAppState(neturl);
}
class _VideoAppState extends State<VideoApp> {
  String neturl;
  _VideoAppState(String neturl){
    this.neturl = neturl;
  }
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(neturl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Container(
      width:300,
      height: 300,
      child: Scaffold(
          body: Center(
            child: _controller.value.initialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : Container(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),

          ),
      ),
    );

  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



