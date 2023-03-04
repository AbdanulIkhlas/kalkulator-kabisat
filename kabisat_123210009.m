function varargout = kabisat_123210009(varargin)
%KABISAT_123210009 MATLAB code file for kabisat_123210009.fig
%      KABISAT_123210009, by itself, creates a new KABISAT_123210009 or raises the existing
%      singleton*.
%
%      H = KABISAT_123210009 returns the handle to a new KABISAT_123210009 or the handle to
%      the existing singleton*.
%
%      KABISAT_123210009('Property','Value',...) creates a new KABISAT_123210009 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to kabisat_123210009_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      KABISAT_123210009('CALLBACK') and KABISAT_123210009('CALLBACK',hObject,...) call the
%      local function named CALLBACK in KABISAT_123210009.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kabisat_123210009

% Last Modified by GUIDE v2.5 04-Mar-2023 07:41:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kabisat_123210009_OpeningFcn, ...
                   'gui_OutputFcn',  @kabisat_123210009_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before kabisat_123210009 is made visible.
function kabisat_123210009_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for kabisat_123210009
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kabisat_123210009 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kabisat_123210009_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputTahun_Callback(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTahun as text
%        str2double(get(hObject,'String')) returns contents of inputTahun as a double



% --- Executes during object creation, after setting all properties.
function inputTahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonCheck.
function buttonCheck_Callback(hObject, eventdata, handles)
% hObject    handle to buttonCheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% mengambil nilai tahun dari GUI
tahun =get(handles.inputTahun, 'string');

% convert string to number
tahun =str2num(tahun);

% menampilkan hasil ke GUI
if mod(tahun, 4) == 0
    if mod(tahun, 100) == 0  
        if mod(tahun, 400) == 0
            set(handles.hasil, 'string', 'Tahun Kabisat');
        else
            disp('Bukan tahun kabisat');
            set(handles.hasil, 'string', 'Bukan Tahun Kabisat');
        end
    else
        set(handles.hasil, 'string', 'Tahun Kabisat');
    end
else
    set(handles.hasil, 'string', 'Bukan Tahun Kabisat');
end
