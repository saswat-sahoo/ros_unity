 
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using ROSBridgeLib;
using ROSBridgeLib.CombinedInfo;
public class objectstate : MonoBehaviour
{
	public GameObject game;
    private float pretime;
    private Vector3 patpos=Vector3.zero;
    private Quaternion qn = Quaternion.identity;
    Info msg;
    Vector3Msg geometryVector3;
    private bool pass;
        Vector3Msg geomv;
        Vector3Msg geonm;
    // Start is called before the first frame update
    void Start()
    {
       
        
    }

    // Update is called once per frame
    void Update()
    {
        Updatemess();
        
    }
   private void Updatemess(){
float deltatime=Time.realtimeSinceStartup-pretime;
        Vector3 linacc =(game.transform.position-patpos)/(deltatime);
        Vector3 angularvel=(game.transform.rotation.eulerAngles-qn.eulerAngles)/deltatime;
        Vector3 rota=game.transform.rotation.eulerAngles;
        
        pretime = Time.realtimeSinceStartup;
        patpos = game.transform.position;
        qn = game.transform.rotation;
      geometryVector3 = new Vector3Msg(linacc.x,linacc.y,linacc.z);
       geomv = new Vector3Msg(angularvel.x,angularvel.y,angularvel.z);
      geonm =new Vector3Msg(rota.x,rota.y,rota.z);
    msg = new Info(geometryVector3,geomv,geonm);
    GameObject.Find("Cube").GetComponent<ROSInitialize>().ros.Publish(contInfo.GetMessageTopic(),msg);}
	//}
   

}

