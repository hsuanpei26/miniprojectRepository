from django.shortcuts import render,redirect
from .modelproduct import Menu
from django.core.files.storage import FileSystemStorage
# Create your views here.
def index(request):
    menu = Menu()
    datas = menu.all()

    title = '餐點列表'
    # print(datas)
    return render(request,'product/index.html',locals())

def create(request):
    # if request.method == "POST" and request.FILES["productimage"]:
    if request.method == "POST":        
        kind =request.POST['kind']
        name =request.POST['name']
        uniprice =request.POST['unitprice']
        manufacturer =request.POST['manufacturer']
        # imgfile =request.FILES['productimage']
        # productimage = imgfile.name

        # 資料新增
        menu = Menu()
        datas = tuple([kind,name,uniprice,manufacturer])
        menu.create(datas)

        # 檔案上傳
        # fs = FileSystemStorage()
        # fs.save(productimage,imgfile)

        return redirect("/product")
    
    title = '新增餐點'
    return render(request,'product/create.html',locals())

def delete(request,id):
    menu = Menu()
    menu.delete(id)
    return redirect("/product")

def update(request,id):
    if request.method == "POST":
        kind = request.POST['kind']        
        name = request.POST['name']
        uniprice = request.POST['unitprice']
        manufacturer = request.POST['manufacturer']
        # 資料修改
        menu = Menu()
        datas = tuple([kind,name,uniprice,manufacturer,id])
        menu.update(datas)

        return redirect("/product")
    
    title = '修改餐點'
    menu = Menu()
    singlepro = menu.single(id)
    return render(request,'product/update.html',locals())

def bill(request):
    title = '點餐'
    menu = Menu()
    datas = menu.all()   
    return render(request,'product/bill.html',locals())