async function logout() {
    return new Promise(resolve => {
        fetch('/be/logout.php')
        .then(response => response.json())
        .then(result => {
            resolve(result);
        })
        .catch((error) => {
            resolve(error);
        });
    })
}

async function login(usr, pwd) {
    return new Promise(resolve => {
        fetch('/be/login.php?' + new URLSearchParams({
            usr: usr,
            pwd: pwd
        }))
        .then(response => response.json())
        .then(result => {
            resolve(result);
        })
        .catch((error) => {
            resolve(error);
        });
    })
}

async function getdata(url, data) {
    return new Promise(resolve => {
        fetch(url + '?' + new URLSearchParams(data))
        .then(response => response.json())
        .then(result => {
            resolve(result);
        })
        .catch((error) => {
            resolve(error);
        });
    })
}

async function savedata(url, data) {
    return new Promise(resolve => {
        fetch(url + '?' + new URLSearchParams(data))
        .then(response => response.json())
        .then(result => {
            resolve(result);
        })
        .catch((error) => {
            resolve(error);
        });
    })
}

function is_numeric(mixed_var){return(typeof(mixed_var)==='number'||typeof(mixed_var)==='string')&&mixed_var!==''&&!isNaN(mixed_var);}

function format_date(datetime, string_format) {
	return string_format
	.replace(/YY/g, datetime.getFullYear().toString().padStart(4, '0'))
	.replace(/Y/g, datetime.getFullYear().toString())
	.replace(/MM/g, (datetime.getMonth() + 1).toString().padStart(2, '0'))
	.replace(/M/g, (datetime.getMonth() + 1).toString())
	.replace(/dd/g, datetime.getDate().toString().padStart(2, '0'))
	.replace(/d/g, datetime.getDate().toString())
	.replace(/HH/g, datetime.getHours().toString().padStart(2, '0'))
	.replace(/H/g, datetime.getFullYear().toString())
	.replace(/mm/g, datetime.getMinutes().toString().padStart(2, '0'))
	.replace(/m/g, datetime.getMinutes().toString())
	.replace(/ss/g, datetime.getSeconds().toString().padStart(2, '0'))
	.replace(/s/g, datetime.getSeconds().toString())
	;
}

function format_number(number) {
	return new Intl.NumberFormat('vi-VN').format(number);
}

function unique_array(a) {
	return [...new Set(a)];
}

function last_day_of_month(month, year) {
	return new Date(year, month, 0).getDate();
}