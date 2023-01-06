public class fitness {

    public static decimal BMI(decimal Height,decimal Weight){
        decimal BMIcheck =Weight/(Height*Height).setScale(2);
        System.debug('The BMI is ' +BMIcheck );
        return BMIcheck;
    }

    public static decimal  Pace(decimal distance,decimal Timex){
        decimal Pace_x = distance/Timex;

        System.debug('the pace is equal to' + Pace_x);

        return Pace_x;
    }

}