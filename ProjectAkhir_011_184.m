function varargout = ProjectAkhir_011_184(varargin)
% PROJECTAKHIR_011_184 MATLAB code for ProjectAkhir_011_184.fig
%      PROJECTAKHIR_011_184, by itself, creates a new PROJECTAKHIR_011_184 or raises the existing
%      singleton*.
%
%      H = PROJECTAKHIR_011_184 returns the handle to a new PROJECTAKHIR_011_184 or the handle to
%      the existing singleton*.
%
%      PROJECTAKHIR_011_184('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTAKHIR_011_184.M with the given input arguments.
%
%      PROJECTAKHIR_011_184('Property','Value',...) creates a new PROJECTAKHIR_011_184 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjectAkhir_011_184_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjectAkhir_011_184_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjectAkhir_011_184

% Last Modified by GUIDE v2.5 28-May-2024 18:01:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjectAkhir_011_184_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjectAkhir_011_184_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before ProjectAkhir_011_184 is made visible.
function ProjectAkhir_011_184_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjectAkhir_011_184 (see VARARGIN)

% Choose default command line output for ProjectAkhir_011_184
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProjectAkhir_011_184 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjectAkhir_011_184_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnShow.
function btnShow_Callback(hObject, eventdata, handles)
% hObject    handle to btnShow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

opts = detectImportOptions('allProduct.xlsx');
opts.SelectedVariableNames = {'default_category', 'product_name', 'beauty_point_earned', 'price_range', 'average_rating', 'total_reviews', 'total_recommended_count', 'total_in_wishlist'};
 
%radio button
if get(handles.bodyLotion, 'Value') == 1
    kategori = 'body lotion';
elseif get(handles.faceWash, 'Value') == 1
    kategori = 'Face Wash';
elseif get(handles.faceSerum, 'Value') == 1
    kategori = 'Face Serum';
elseif get(handles.sheetMask, 'Value') == 1
    kategori = 'Sheet Mask';
elseif get(handles.skinCareSet, 'Value') == 1
    kategori = 'Skin Care Set';
else
    errordlg('Pilih Salah Satu Kategori','Error');
    return;
end

data = readtable('allProduct.xlsx', opts);
dataFilter = data(strcmp(data.default_category, kategori), :);
set(handles.showData, 'Data', table2cell(dataFilter));



function bpe_Callback(hObject, eventdata, handles)
% hObject    handle to bpe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bpe as text
%        str2double(get(hObject,'String')) returns contents of bpe as a double


% --- Executes during object creation, after setting all properties.
function bpe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bpe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pr_Callback(hObject, eventdata, handles)
% hObject    handle to pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr as text
%        str2double(get(hObject,'String')) returns contents of pr as a double


% --- Executes during object creation, after setting all properties.
function pr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ar_Callback(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ar as text
%        str2double(get(hObject,'String')) returns contents of ar as a double


% --- Executes during object creation, after setting all properties.
function ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function re_Callback(hObject, eventdata, handles)
% hObject    handle to re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of re as text
%        str2double(get(hObject,'String')) returns contents of re as a double


% --- Executes during object creation, after setting all properties.
function re_CreateFcn(hObject, eventdata, handles)
% hObject    handle to re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rec_Callback(hObject, eventdata, handles)
% hObject    handle to rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rec as text
%        str2double(get(hObject,'String')) returns contents of rec as a double


% --- Executes during object creation, after setting all properties.
function rec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kv_Callback(hObject, eventdata, handles)
% hObject    handle to kv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kv as text
%        str2double(get(hObject,'String')) returns contents of kv as a double


% --- Executes during object creation, after setting all properties.
function kv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnDetermine.
function btnDetermine_Callback(hObject, eventdata, handles)
% hObject    handle to btnDetermine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

bpe = str2double(get(handles.bpe, 'String')); % beauty point earned
pr  = str2double(get(handles.pr, 'String'));  % price
ar  = str2double(get(handles.ar, 'String'));  % average rating
re  = str2double(get(handles.re, 'String'));  % reviews
rec = str2double(get(handles.rec, 'String')); % recommended count
kv  = str2double(get(handles.kv, 'String'));  % k-value

if any(isnan([bpe, pr, ar, re, rec, kv]))
    error('Pastikan semua input adalah angka.');
end

sample = normalize([bpe, pr, ar, re, rec]);

opts = detectImportOptions('allProduct.xlsx');
opts.SelectedVariableNames = {'default_category', 'beauty_point_earned', 'price_range', 'average_rating', 'total_reviews', 'total_recommended_count', 'total_in_wishlist'};
data = readtable('allProduct.xlsx', opts);

if get(handles.bodyLotion, 'Value') == 1
    terpilih = 'body lotion';
elseif get(handles.faceWash, 'Value') == 1
    terpilih = 'Face Wash';
elseif get(handles.faceSerum, 'Value') == 1
    terpilih = 'Face Serum';
elseif get(handles.sheetMask, 'Value') == 1
    terpilih = 'Sheet Mask';
elseif get(handles.skinCareSet, 'Value') == 1
    terpilih = 'Skin Care Set';
else
    errordlg('Pilih Salah Satu Kategori','Error');
    return;
end

data = data(strcmp(data.default_category, terpilih), :);

training = normalize(table2array(data(:, 2:end-1)));
target = table2array(data(:, end));

class = fitcknn(training, target, 'NumNeighbors', kv);
result = predict(class, sample);

% Tentukan kategori wishlist berdasarkan rentang nilai
if result == 0
    set_result = 'Rendah';
elseif result == 1
    set_result = 'Normal';
elseif result == 2
    set_result = 'Cukup Tinggi';
elseif result == 3
    set_result = 'Tinggi';
elseif result == 4
    set_result = 'Sangat Tinggi';
end

set(handles.textHasli, 'String', ['Tingkat Wishlist Kemungkinan Besar Adalah ', set_result]);


function textHasli_Callback(hObject, eventdata, handles)
% hObject    handle to textHasli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textHasli as text
%        str2double(get(hObject,'String')) returns contents of textHasli as a double


% --- Executes during object creation, after setting all properties.
function textHasli_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textHasli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bpe, 'String', '');
set(handles.pr, 'String', '');
set(handles.ar, 'String', '');
set(handles.re, 'String', '');
set(handles.rec, 'String', '');
set(handles.kv, 'String', '');
set(handles.textHasli, 'String', '');
