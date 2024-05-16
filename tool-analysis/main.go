/**
 * @Author: Administrator
 * @Description:
 * @File: main.go
 * @Date: 2024/5/16 22:02
 */
package main

import (
	"fmt"
	"github.com/gotk3/gotk3/glib"
	"github.com/gotk3/gotk3/gtk"
	"log"
	"os"
	"reflect"
)

func main() {
	const appId = "com.nayoso.example"

	app, _ := gtk.ApplicationNew(appId, glib.APPLICATION_FLAGS_NONE)
	app.Connect("activate", func() {
		onActivate(app)
	})
	app.Run(os.Args)

}

func onActivate(application *gtk.Application) {
	if builder, err := gtk.BuilderNewFromFile("builder.ui"); err != nil { //从文件中创建Builder
		log.Fatal(err)
	} else if winObj, err := builder.GetObject("window"); err != nil { //从文件中读取window对象，其实际上是Gobject
		log.Fatal(err)
	} else {
		window := winObj.(*gtk.Window)         //由于winObj是Gobject，所以我们使用类型断言得到Gtk.Window对象
		window.SetSizeRequest(900, 600)        //设置窗口大小
		window.SetTitle("hello go")            //设置标题
		window.SetResizable(false)             //设置不可伸缩
		window.SetPosition(gtk.WIN_POS_CENTER) //设置居中显示

		//获取布局控件
		tableObj, err := builder.GetObject("grid1")
		if err != nil {
			log.Fatal(err)
		}
		fmt.Println("tableObj", reflect.TypeOf(tableObj))
		table := tableObj.(*gtk.Grid)

		scrolledWindowObj, err := builder.GetObject("scrolledwindow")
		if err != nil {
			log.Fatal(err)
		}

		scrolledWindow := scrolledWindowObj.(*gtk.ScrolledWindow)

		// 创建一个滚动窗口
		//scrolledWindow, err := gtk.ScrolledWindowNew(nil, nil)
		//if err != nil {
		//	log.Fatal("无法创建滚动窗口:", err)
		//}
		//table.Add(scrolledWindow)
		scrolledWindow.SetPolicy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
		scrolledWindow.SetMinContentWidth(550)
		scrolledWindow.SetMinContentHeight(600)

		//创建一个GtkListStore来存储数据
		listStore, err := gtk.ListStoreNew(glib.TYPE_STRING, glib.TYPE_STRING, glib.TYPE_STRING, glib.TYPE_STRING, glib.TYPE_STRING, glib.TYPE_STRING, glib.TYPE_STRING)
		if err != nil {
			log.Fatal("无法创建ListStore:", err)
		}

		//创建一个GtkTreeView来显示数据
		treeView, err := gtk.TreeViewNewWithModel(listStore)
		if err != nil {
			log.Fatal("无法创建TreeView:", err)
		}

		// 添加两列到列表组件
		renderer, err := gtk.CellRendererTextNew()
		if err != nil {
			log.Fatal("无法创建CellRendererText:", err)
		}

		info := []string{
			"Fpid",
			"Uid",
			"KingdomId",
			"Status",
			"Name",
			"AllianceId",
			"AllianceName",
		}

		for index, val := range info {
			column, err := gtk.TreeViewColumnNewWithAttribute(val, renderer, "text", index)
			if err != nil {
				log.Fatal("无法创建TreeViewColumn:", err)
			}

			treeView.AppendColumn(column)
		}

		for n := 0; n < 200; n++ {
			// 添加一些示例数据
			iter := listStore.Append()
			for index, v := range info {
				if v == "Status" {
					listStore.SetValue(iter, index, "登录中")
				} else {
					listStore.SetValue(iter, index, fmt.Sprintf("%d", index))
				}
			}
		}

		scrolledWindow.Add(treeView)

		button2, err := gtk.LabelNew("       ")
		if err != nil {
			log.Fatal("无法创建按钮:", err)
		}
		table.Add(button2)

		vbox1, err := gtk.BoxNew(gtk.ORIENTATION_VERTICAL, 0)
		vbox1.SetSizeRequest(300, 200)
		table.Add(vbox1)

		// 创建一个输入的文本框
		buffer, _ := gtk.TextBufferNew(nil)
		view, _ := gtk.TextViewNewWithBuffer(buffer)
		view.SetWrapMode(gtk.WRAP_WORD)
		//entry.set("在这里输入文本")

		// 将文本框添加到垂直布局容器中
		vbox1.PackStart(view, true, true, 0)

		// 创建一个按钮
		button, err := gtk.ButtonNewWithLabel("点击我")
		if err != nil {
			log.Fatal("无法创建按钮:", err)
		}
		button.Connect("clicked", func() {
			log.Println("")
		})
		//vbox1.Add(button)
		//vbox1.Add(entry)

		//entry2, err := gtk.EntryNew()
		//if err != nil {
		//	log.Fatal("无法创建文本框:", err)
		//}
		//entry2.SetText("在这里输入文本")
		//vbox1.PackStart(entry2, true, true, 0)
		vbox1.Add(button)

		application.AddWindow(window) //记得将window加入我们的application中

		window.ShowAll()
	}
}

func main01() {
	gtk.Init(nil)

	// 创建一个新的窗口
	win, err := gtk.WindowNew(gtk.WINDOW_TOPLEVEL)
	if err != nil {
		log.Fatal("无法创建窗口:", err)
	}
	win.SetTitle("测试UI")
	win.Connect("destroy", func() {
		gtk.MainQuit()
	})
	win.SetDefaultSize(900, 900)

	// 创建一个垂直布局容器
	vbox, err := gtk.BoxNew(gtk.ORIENTATION_HORIZONTAL, 10)
	if err != nil {
		log.Fatal("无法创建垂直布局容器:", err)
	}

	// 创建一个滚动窗口
	scrolledWindow, err := gtk.ScrolledWindowNew(nil, nil)
	if err != nil {
		log.Fatal("无法创建滚动窗口:", err)
	}
	scrolledWindow.SetPolicy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
	scrolledWindow.SetMinContentWidth(450)
	scrolledWindow.SetMinContentHeight(500)

	//创建一个GtkListStore来存储数据
	listStore, err := gtk.ListStoreNew(glib.TYPE_STRING, glib.TYPE_STRING)
	if err != nil {
		log.Fatal("无法创建ListStore:", err)
	}

	//创建一个GtkTreeView来显示数据
	treeView, err := gtk.TreeViewNewWithModel(listStore)
	if err != nil {
		log.Fatal("无法创建TreeView:", err)
	}

	// 添加两列到列表组件
	renderer, err := gtk.CellRendererTextNew()
	if err != nil {
		log.Fatal("无法创建CellRendererText:", err)
	}

	info := map[int]string{
		0: "Fpid",
		1: "Uid",
		2: "KingdomId",
		3: "Status",
		4: "Name",
		5: "AllianceId",
		6: "AllianceName",
	}

	for index, val := range info {
		column, err := gtk.TreeViewColumnNewWithAttribute(val, renderer, "text", index)
		if err != nil {
			log.Fatal("无法创建TreeViewColumn:", err)
		}

		treeView.AppendColumn(column)
	}

	for n := 0; n < 50; n++ {
		// 添加一些示例数据
		iter := listStore.Append()
		for index, _ := range info {
			listStore.SetValue(iter, index, "3123121")
		}
	}

	scrolledWindow.Add(treeView)
	// 将标签和按钮添加到垂直布局容器中
	vbox.PackStart(scrolledWindow, true, true, 0)

	vbox1, err := gtk.BoxNew(gtk.ORIENTATION_VERTICAL, 10)
	vbox.PackStart(vbox1, true, true, 0)
	// 创建一个输入的文本框
	entry, err := gtk.EntryNew()
	if err != nil {
		log.Fatal("无法创建文本框:", err)
	}
	entry.SetText("在这里输入文本")
	// 将文本框添加到垂直布局容器中
	vbox1.PackStart(entry, true, true, 0)

	// 创建一个按钮
	button, err := gtk.ButtonNewWithLabel("点击我")
	if err != nil {
		log.Fatal("无法创建按钮:", err)
	}
	button.Connect("clicked", func() {
		log.Println("按钮被点击")
	})
	vbox1.PackStart(button, true, true, 0)

	win.Add(vbox)

	// 显示所有窗口中的控件
	win.ShowAll()

	gtk.Main()
}
