walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}
walker greet_user {
    has name: str;
    
    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}
walker sum_numbers {
    has num1: int;
    has num2: int;

    can return_message with `root entry {
        let result = self.num1 + self.num2;
        report {
            "response": "The sum is " + str(result) + "."
        };
    }
}
