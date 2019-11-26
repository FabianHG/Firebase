package mx.edu.utng.becasf

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

    }
    fun btnSolicitar(view: View) {

        var edad = this.etxEdad.text.toString()
        var promedio = this.etxPromedio.text.toString()
        var ingreso = this.etxIngreso.text.toString()
        var hermanos = this.etxHermanos.text.toString()
        var folio = this.etxFolio.text.toString()

        if (edad>0.toString()&&promedio>0.toString()&&ingreso>0.toString()&&hermanos>=0.toString()&&folio>0.toString()){
            if (edad>15.toString()&&edad<46.toString()){
                if (ingreso<7001.toString()){
                    if (folio==123.toString()){
                        if (buena.isChecked){
                            if(promedio>79.toString()&&promedio<86.toString()){
                                startActivity(Intent(this,Ok::class.java))
                            }else{
                                startActivity(Intent(this, Fail::class.java))
                            }
                        }else{
                            if (muyBuena.isChecked){
                                if(promedio>85.toString()&&promedio<96.toString()){
                                    startActivity(Intent(this,Ok::class.java))
                                }else{
                                    startActivity(Intent(this, Fail::class.java))
                                }
                            }else{
                                if (excelente.isChecked){
                                    if(promedio>96.toString()&&promedio<101.toString()){
                                        if (hermanos)
                                    }else{
                                        startActivity(Intent(this, Fail::class.java))
                                    }
                                }else{

                                }
     