using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WixSharp;

namespace generator
{
	class Program
	{
		static void Main(string[] args)
		{


			var project = new Project("CustomActionTest",
				new Dir(@"%ProgramFiles%\Sysinternals",
					  new File(@"Files\Docs\Manual.txt"),
					  new File(@"Files\Bin\MyApp.exe")));


			Compiler.BuildWxs(project, "Product.wxs", Compiler.OutputType.MSI);

		}
	}
}
