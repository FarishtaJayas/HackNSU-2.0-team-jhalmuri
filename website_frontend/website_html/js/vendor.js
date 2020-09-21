// api url
const api_url = "http://127.0.0.1:5060/admin/procurebd_api/vendor/";

// Defining async function
async function getapi(url) {

	// Storing response
	const response = await fetch(url);

	// Storing data in form of JSON
	var data = await response.json();
	console.log(data);
	if (response) {
		hideloader();
	}
	show(data);
}
// Calling that async function
getapi(api_url);

// Function to hide the loader
function hideloader() {
	document.getElementById('loading').style.display = 'none';
}
// Function to define innerHTML for HTML table
function show(data) {
	let tab =
		`<tr>
		<th>Vendor Name</th>
		<th>Vendor Email</th>
		<th>Vendor Phone</th>
		<th>Vendor Address</th>
		</tr>`;

	// Loop to access all rows
	for (let r of data.list) {
		tab += `<tr>
	<td>${r.vendor_name} </td>
	<td>${r.vendor_email}</td>
	<td>${r.vendor_phone}</td>
	<td>${r.vendor_address}</td>
</tr>`;
	}
	// Setting innerHTML as tab variable
	const vendors= document.getElementById("vendors").innerHTML = tab;
	vendors.addEventListener("submit", function (e) {
			e.preventDefault();

			console.log("Form has been submitted");

		});
	}

