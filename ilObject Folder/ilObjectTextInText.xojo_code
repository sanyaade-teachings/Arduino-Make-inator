#tag Class
Protected Class ilObjectTextInText
Inherits ilObjectBase
	#tag Event
		Sub GenerateAndroidCode(theOrigin as string)
		  dim s as string
		  
		  s = "public void " + GetCodeName + "()" + EndOfLine
		  
		  s = s + "{" + EndOfLine
		  
		  s = s + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalAndroidName + " = " + _
		  modVariables.VariableObjectFromName(OriginVariable).ISCClassLocalAndroidName + ".indexOf(" + _
		  modVariables.VariableObjectFromName(MathVariable2).ISCClassLocalAndroidName + ");" + EndOfLine
		  
		  s = s + "if (" + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalAndroidName + " == -1)" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "NotFound" + EndOfLine
		  s = s + "}" + EndOfLine
		  s = s + "else" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "Found" + EndOfLine
		  s = s + "}" + EndOfLine
		  
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Check", GetCodeName + "();")
		  
		  AndroidInsertCodeAtMarker(s, "//EndOfFunctions")
		End Sub
	#tag EndEvent

	#tag Event
		Sub GenerateFlexWebCode(theOrigin as string)
		  dim s as string
		  
		  s = "private function " + GetCodeName + "():void" + EndOfLine
		  
		  s = s + "{" + EndOfLine
		  
		  s = s + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + " = " + _
		  modVariables.VariableObjectFromName(OriginVariable).ISCClassLocalFlexName + ".indexOf(" + _
		  modVariables.VariableObjectFromName(MathVariable2).ISCClassLocalFlexName + ");" + EndOfLine
		  
		  s = s + "if (" + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + " == -1)" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "NotFound" + EndOfLine
		  s = s + "}" + EndOfLine
		  s = s + "else" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "Found" + EndOfLine
		  s = s + "}" + EndOfLine
		  
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Check", GetCodeName + "();")
		  
		  FlexWebInsertCodeAtMarker(s, "//EndOfFunctions")
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub GenerateiOSCode(theOrigin as string)
		  dim s as string
		  
		  s = "- (void) " + GetCodeName + " {" + EndOfLine
		  
		  //s = s + modVariables.VariableObjectFromName(OriginVariable).ISCiOSName + " = [[NSMutableString alloc] initWithString:" + modVariables.VariableObjectFromName(MathVariable1).ISCiOSName + "];" + EndOfLine
		  //s = s + "[" + modVariables.VariableObjectFromName(OriginVariable).ISCiOSName + " appendString:" + modVariables.VariableObjectFromName(MathVariable2).ISCiOSName + "];" + EndOfLine
		  
		  s = s + "NSRange match;" + EndOfLine
		  
		  s = s + "match = [" + modVariables.VariableObjectFromName(OriginVariable).ISCiOSName + " rangeOfString: " + modVariables.VariableObjectFromName(MathVariable2).ISCiOSName + "];"+ EndOfLine
		  
		  s = s + modVariables.VariableObjectFromName(MathVariable1).ISCiOSName + " = match.location;" + EndOfLine
		  
		  s = s + "if (" + modVariables.VariableObjectFromName(MathVariable1).ISCiOSName + " == -1)" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "NotFound" + EndOfLine
		  s = s + "}" + EndOfLine
		  s = s + "else" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "Found" + EndOfLine
		  s = s + "}" + EndOfLine
		  
		  s = s + "" + EndOfLine
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Check", "[self " + GetCodeName + "];")
		  
		  iOSMInsertCodeAtMarker(s, "//EndOfFunctions")
		End Sub
	#tag EndEvent

	#tag Event
		Sub GenerateJavaScriptWebCode(theOrigin as string, optional theTarget as integer)
		  dim s as string
		  
		  s = "function " + GetCodeName + "()" + EndOfLine
		  
		  s = s + "{" + EndOfLine
		  
		  s = s + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + " = " + _
		  modVariables.VariableObjectFromName(OriginVariable).ISCClassLocalFlexName + ".indexOf(" + _
		  modVariables.VariableObjectFromName(MathVariable2).ISCClassLocalFlexName + ");" + EndOfLine
		  
		  s = s + "if (" + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + " == -1)" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "NotFound" + EndOfLine
		  s = s + "}" + EndOfLine
		  s = s + "else" + EndOfLine
		  s = s + "{" + EndOfLine
		  s = s + "//" + GetCodeName + "Found" + EndOfLine
		  s = s + "}" + EndOfLine
		  
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Check", GetCodeName + "();")
		  
		  HTML5InsertCodeAtMarker(s, "//EndOfFunctions")
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub GeneratePythonDesktopCode(theOrigin as string)
		  dim s as string
		  
		  s = "def " + GetCodeName + "():" + EndOfLine
		  
		  s = s + " " + modVariables.VariableObjectFromName(MathVariable1).ISCPythonName + " = " + _
		  modVariables.VariableObjectFromName(OriginVariable).ISCPythonName + ".find(" + _
		  modVariables.VariableObjectFromName(MathVariable2).ISCPythonName + ")" + EndOfLine
		  
		  s = s + " if " + modVariables.VariableObjectFromName(MathVariable1).ISCPythonName + " == -1:" + EndOfLine
		  s = s + "  #" + GetCodeName + "NotFound" + EndOfLine
		  s = s + " else:" + EndOfLine
		  s = s + "  #" + GetCodeName + "Found" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Check", GetCodeName + "()")
		  
		  PythonInsertCodeAtMarker(s, "#EndOfFunctions")
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  me.CodeNameBase = "iscInText"
		  me.BGColor =  frmProject.kcolText
		  me.DisplayName = "Position In Text"
		  me.DisplayCategory = "Text"
		  me.Title = "Position In Text"
		  me.Width = 90
		  
		  me.ObjectItems.Append "Check"
		  me.ObjectShowInput.Append true
		  me.ObjectShowOutput.Append false
		  
		  me.ObjectItems.Append "Found"
		  me.ObjectShowInput.Append false
		  me.ObjectShowOutput.Append true
		  
		  me.ObjectItems.Append "NotFound"
		  me.ObjectShowInput.Append false
		  me.ObjectShowOutput.Append true
		  
		  RequireOriginVariable = true
		  RequireMathVariable1 = true
		  RequireMathVariable2 = true
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="BGColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodeNameBase"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomMessage"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBObjectType"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayCategory"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable1"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable2"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable3"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable4"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable5"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable6"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MessageFromVariable"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLocalUniqueID"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OriginVariable"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable1"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable2"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable3"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable4"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable5"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable6"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMessageFromVariable"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireOriginVariable"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequirevarControlName"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequirevarWindowName"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UniqueID"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseVariableForMessage"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="varControlName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="varWindowName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
