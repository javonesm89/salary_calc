












def income_tax?(state)

    new_state = state.to_s
    income_tax = ["ND","AZ","NM","MS","MO","GA","KS","VA","LA","RI","MD","WV","DE","NE","AR","MT","ID","CT","SC","ME","OR","IL","AL","IN", "MA", "MI", "NC", "PA", "UT", "CO","CA", "HI", "OR", "MN", "IA", "NJ", "VT", "DC", "NY", "WI", "OH", "OK", "KY"]
    if (income_tax.find {|i| i == new_state})
        return new_state
    end
end

def no_income_tax?(state)
     no_income_tax = ["AK", "FL", "NV", "SD", "TX", "WA", "WY"]
     if (no_income_tax.find {|n| n == state})
        return state
    end
end

def interest_dividends?(state)

    interest_dividends = ["TN", "NH"]
    if (interest_dividends.find {|n| n == state})
        return state
    end

end