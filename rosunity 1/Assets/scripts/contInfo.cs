using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SimpleJSON;
using ROSBridgeLib.CombinedInfo;

public class contInfo : MonoBehaviour
{
    public static string GetMessageTopic(){
return "/Combined";}

       public static string GetMessageType(){
   
        return "/CombinedInfo/Info";}
     public static string ToYAMLString(Info msg){
return msg.ToYAMLString();}
       public new static ROSBridgeMsg ParseMessage(JSONNode Msg){
          return new Info(Msg);} 


    }
