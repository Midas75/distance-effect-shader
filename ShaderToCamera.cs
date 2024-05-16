using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShaderToCamera : MonoBehaviour
{
    public Shader effectsShader;
    private Camera cam;
    // Start is called before the first frame update
    void Start()
    {
        cam= GetComponent<Camera>();
        cam.SetReplacementShader(effectsShader,"");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
