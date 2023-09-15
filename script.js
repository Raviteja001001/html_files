
var selectedRow=null;
//Get Values From Form
function readFormData(){
    var formData={};
    //Get Values from Input
    formData["userName"]=document.getElementById("userName").value;
    formData["rollNo"]=document.getElementById("rollNo").value;
    formData["stdClass"]=document.getElementById("stdClass").value;
    formData["tsub"]=document.getElementById("tsub").value;
    formData["age"]=document.getElementById("age").value;
    //return Form Data
    return formData;
}
//reset Function
function resetForm(){
    document.getElementById("userName").value="";
    document.getElementById("rollNo").value="";
    document.getElementById("stdClass").value="";
    document.getElementById("tsub").value="";
    document.getElementById("age").value="";
    selectRow=null;
}
//insert New User Record
function insertNewRecord(data){
    var table=document.getElementById("stdlist").getElementsByTagName('tbody')[0];
    var newRow=table.insertRow(table.length);
    cell1=newRow.insertCell(0);
    cell1.innerHTML=data.userName;
    cell2=newRow.insertCell(1);
    cell2.innerHTML=data.rollNo;
    cell3=newRow.insertCell(2);
    cell3.innerHTML=data.stdClass;
    cell4=newRow.insertCell(3);
    cell4.innerHTML=data.tsub;
    cell5=newRow.insertCell(4);
    cell5.innerHTML=data.age;
    cell5=newRow.insertCell(5);
    cell5.innerHTML='<a onClick="onEdit(this)">Edit</a><a onClick="onDelete(this)">Delete</a>';
}
function onFormSubmit(){
    var formData=readFormData();
    //check empty row
    if(selectedRow==null){
        insertNewRecord(formData);
        resetForm();
    }
} 

