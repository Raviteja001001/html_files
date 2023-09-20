var selectedRow=null;
function onFormSubmit(){
    var formData=readFormData();
   if(selectedRow=null){
    insertNewRecord(formData);
   }
   else{
    updateRecord(formData);
   }
    resetForm();
}

function readFormData(){
    var formData={};
    formData["userName"]=document.getElementById("userName").value;
    formData["designation"]=document.getElementById("designation").value;
    formData["sal"]=document.getElementById("sal").value;
    return formData;
}
function resetForm(){
    document.getElementById("userName").value="";
    document.getElementById("designation").value="";
    document.getElementById("sal").value="";
    selectedRow=null;
}
function insertNewRecord(data){
    var table=document.getElementById("stdlist").getElementsByTagName("tbody")[0];
    var newRow=table.insertRow(table.length);
    cell1=newRow.insertCell(0);
    cell1.innerHTML=data.userName;
    cell2=newRow.insertCell(1);
    cell2.innerHTML=data.designation;
    cell3=newRow.insertCell(2);
    cell3.innerHTML=data.sal;
    cell4=newRow.insertCell(3);
    cell4.innerHTML=`<a onClick="onEdit(this)">Edit</a> <a onClick="onDelete(this)">Delete</a>`;
}
function onEdit(td){
    selectedRow=td.parantElement.parantElement;
    document.getElementById("userName").value=selectedRow.cells[0].innerHTML;
    document.getElementById("designation").value=selectedRow.cells[1].innerHTML;
    document.getElementById("sal").value=selectedRow.cells[2].innerHTML;
}
function updateRecord(formData){
    selectedRow.cells[0].innerHTML=formData.userName;
    selectedRow.cells[1].innerHTML=formData.designation;
    selectedRow.cells[2].innerHTML=formData.sal;
}
function onDelete(td){
    if(confirm('are you sure to delete the record..?')){
        row=td.parantElement.parantElement;
        document.getElementById("stdlist").deleteRow(row.rowIndex);
        resetForm();
    }
}


