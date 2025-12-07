/// @description scr_pronoun(char, pronoun_male_version)
/// @param char
/// @param  pronoun_male_version
function scr_pronoun(argument0, argument1) 
{
	if (argument0.it)
	{
		switch (argument1)
	    {
	        case "his": return "its"; break;
	        case "His": return "Its"; break;
	        case "he": return "it"; break;
	        case "He": return "It"; break;
	        case "him": return "it"; break;
	        case "Him": return "It"; break;
	        case "himself": return "itself"; break;
	        case "Himself": return "Itself"; break;
	    }
	}
	else
	{
	if (argument0 != -1)
	{
	    if not (argument0.female)
	    {
	        switch (argument1)
	        {
	            case "his": return "his"; break;
	            case "His": return "His"; break;
	            case "he": return "he"; break;
	            case "He": return "He"; break;
	            case "him": return "him"; break;
	            case "Him": return "Him"; break;
	            case "himself": return "himself"; break;
	            case "Himself": return "Himself"; break;
	        }
	    }
	    else
	    {
	        switch (argument1)
	        {
	            case "his": return "her"; break;
	            case "His": return "Her"; break;
	            case "he": return "she"; break;
	            case "He": return "She"; break;
	            case "him": return "her"; break;
	            case "Him": return "Her"; break;
	            case "himself": return "herself"; break;
	            case "Himself": return "Herself"; break;
	        }
	    }
	} else {return " ";}
	}



}
