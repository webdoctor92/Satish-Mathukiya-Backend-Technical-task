<html>
<head>
    <style>
        .left
         {
           float: left; 
           width: 40%;
           text-align: right;
           padding-right: 20px;
           margin-bottom: 20px;
        

        }
        .right
        {
            float: left;
            width: 50%;
        }
    
       .clear
        {
             clear: both;
        }
                
    </style>
</head>

    <body>
        <h1>Search Job</h1>
        <div>
            <form action="match_jobs.php">
                <div>
                    <div class="left">
                        Property Type:                 
                    </div>
                    <div class="right">
                        <select name="property_type[]" >
                            <option value="">Select Property Type</option>
                            <option value="apartment">Apartment</option>
                            <option value="house">House</option>
                            <option value="flat">Flat</option>
                        </select>
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Property Insurance?
                    </div>
                    <div  class="right">
                        <input type="radio" name="property_insurance" value="yes"  />Yes
                        <input type="radio" name="property_insurance" value="no" checked />No
                    </div>
                </div>
                
                <div class="clear">
                    <div class="left">
                        Car Type:                 
                    </div>
                    <div class="right">
                        <select name="car_type[]" >
                            <option value="">Select Car Type</option>
                            <option value="5 door car">5 door car</option>
                            <option value="4 door car">4 door car</option>
                            <option value="3 door car">3 door car</option>
                            <option value="2 door car">2 door car</option>
                        </select>
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Car Insurance?
                    </div>
                    <div  class="right">
                        <input type="radio" name="car_insurance" value="yes"  />Yes
                        <input type="radio" name="car_insurance" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Car Driving license:
                    </div>
                    <div  class="right">
                        <input type="radio" name="car_driving_license" value="yes"  />Yes
                        <input type="radio" name="car_driving_license" value="no" checked />No
                    </div>
                </div>

                <div class="clear">
                    <div class="left">
                        Do you have Social Security Number?
                    </div>
                    <div  class="right">
                        <input type="radio" name="social_security_number" value="yes"  />Yes
                        <input type="radio" name="social_security_number" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Work Permit?
                    </div>
                    <div class="right">
                        <input type="radio" name="work_permit" value="yes"  />Yes
                        <input type="radio" name="work_permit" value="no" checked/ >No
                    </div>
                </div>

                <div class="clear">
                    <div class="left">
                        Two Wheeler Type:                 
                    </div>
                    <div class="right">
                        <select name="two_wheeler_type[]" >
                            <option value="">Select Two Wheeler Type</option>
                            <option value="scooter">Scooter</option>
                            <option value="bike">Bike</option>
                            <option value="motorcycle">Motorcycle</option>
                        </select>
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Two Wheeler insurance?
                    </div>
                    <div  class="right">
                        <input type="radio" name="two_wheeler_insurance" value="yes"  />Yes
                        <input type="radio" name="two_wheeler_insurance" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Two Wheeler Driving license?
                    </div>
                    <div  class="right">
                        <input type="radio" name="two_wheeler_license" value="yes"  />Yes
                        <input type="radio" name="two_wheeler_license" value="no" checked />No
                    </div>
                </div>

                <div class="clear">
                    <div class="left">
                        Do you  have Massage Qualification Certificate?
                    </div>
                    <div  class="right">
                        <input type="radio" name="massage_qualification_certificate" value="yes"  />Yes
                        <input type="radio" name="massage_qualification_certificate" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you have Liability Insurance?
                    </div>
                    <div  class="right">
                        <input type="radio" name="liability_insurance" value="yes"  />Yes
                        <input type="radio" name="liability_insurance" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Place Type:                 
                    </div>
                    <div class="right">
                        <select  name="place_type[]">
                            <option value="">Select Place Type</option>
                            <option value="storage place">Storage Place</option>
                            <option value="garage">Garage</option>
                        </select>
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you Join Immediately?
                    </div>
                    <div  class="right">
                        <input type="radio" name="join_immediately" value="yes"  />Yes
                        <input type="radio" name="join_immediately" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        Do you PayPal account?
                    </div>
                    <div  class="right">
                        <input type="radio" name="paypal_account" value="yes"  />Yes
                        <input type="radio" name="paypal_account" value="no" checked />No
                    </div>
                </div>
                <div class="clear">
                    <div class="left">
                        <button type="submit" value="search">Submit</button>           
                    </div>
                </div>

            </form>
        </div>
    </body>
</html>