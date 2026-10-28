-- ParametricBG shared renderer v1.0.0.
-- Parameters are call-local.
return function(obj,p)
local mode=p.mode; if mode==nil then mode=0 end
local custom=p.custom; if custom==nil then custom=false end
local cw=p.cw; if cw==nil then cw=1920 end
local ch=p.ch; if ch==nil then ch=1080 end
local bg=p.bg; if bg==nil then bg=0xF5F1E9 end
local transparent=p.transparent; if transparent==nil then transparent=false end
local bga=p.bga; if bga==nil then bga=0 end
local opacity=p.opacity; if opacity==nil then opacity=100 end
local output=p.output; if output==nil then output=0 end
local marginx=p.marginx; if marginx==nil then marginx=0 end
local marginy=p.marginy; if marginy==nil then marginy=0 end
local whole=p.whole; if whole==nil then whole=false end
local shapea=p.shapea; if shapea==nil then shapea=0 end
local filea=p.filea; if filea==nil then filea="" end
local wa=p.wa; if wa==nil then wa=8 end
local ha=p.ha; if ha==nil then ha=8 end
local ra=p.ra; if ra==nil then ra=0 end
local depth=p.depth; if depth==nil then depth=0 end
local depth_angle=p.depth_angle; if depth_angle==nil then depth_angle=45 end
local linewidth=p.linewidth; if linewidth==nil then linewidth=2048 end
local aa=p.aa; if aa==nil then aa=0 end
local tri=p.tri; if tri==nil then tri=2 end
local arm=p.arm; if arm==nil then arm=30 end
local star=p.star; if star==nil then star=40 end
local assetfit=p.assetfit; if assetfit==nil then assetfit=0 end
local sx=p.sx; if sx==nil then sx=24 end
local sy=p.sy; if sy==nil then sy=24 end
local stagger=p.stagger; if stagger==nil then stagger=false end
local hexgrid=p.hexgrid; if hexgrid==nil then hexgrid=false end
local gx=p.gx; if gx==nil then gx=0 end
local gy=p.gy; if gy==nil then gy=0 end
local ga=p.ga; if ga==nil then ga=0 end
local jitter=p.jitter; if jitter==nil then jitter=0 end
local density=p.density; if density==nil then density=100 end
local seed=p.seed; if seed==nil then seed=7421 end
local minimum=p.minimum; if minimum==nil then minimum=0 end
local strength=p.strength; if strength==nil then strength=100 end
local reverse=p.reverse; if reverse==nil then reverse=false end
local curve=p.curve; if curve==nil then curve=0 end
local base=p.base; if base==nil then base=0 end
local ns=p.ns; if ns==nil then ns=240 end
local na=p.na; if na==nil then na=0 end
local oct=p.oct; if oct==nil then oct=3 end
local nx=p.nx; if nx==nil then nx=0 end
local ny=p.ny; if ny==nil then ny=0 end
local phase=p.phase; if phase==nil then phase=0 end
local morph=p.morph; if morph==nil then morph=false end
local shapeb=p.shapeb; if shapeb==nil then shapeb=0 end
local fileb=p.fileb; if fileb==nil then fileb="" end
local wb=p.wb; if wb==nil then wb=16 end
local hb=p.hb; if hb==nil then hb=16 end
local rb=p.rb; if rb==nil then rb=0 end
local ab=p.ab; if ab==nil then ab=0 end
local morph_source=p.morph_source; if morph_source==nil then morph_source=0 end
local morph_reverse=p.morph_reverse; if morph_reverse==nil then morph_reverse=false end
local shortest=p.shortest; if shortest==nil then shortest=false end
local mx=p.mx; if mx==nil then mx=0 end
local my=p.my; if my==nil then my=0 end
local ma=p.ma; if ma==nil then ma=0 end
local ml=p.ml; if ml==nil then ml=960 end
local paint=p.paint; if paint==nil then paint=0 end
local fg=p.fg; if fg==nil then fg=0x202020 end
local col1=p.col1; if col1==nil then col1=0x00A8E7 end
local weight1=p.weight1; if weight1==nil then weight1=25 end
local col2=p.col2; if col2==nil then col2=0xE40087 end
local weight2=p.weight2; if weight2==nil then weight2=25 end
local col3=p.col3; if col3==nil then col3=0xF7EA00 end
local weight3=p.weight3; if weight3==nil then weight3=25 end
local col4=p.col4; if col4==nil then col4=0x000000 end
local weight4=p.weight4; if weight4==nil then weight4=25 end
local color_seed=p.color_seed; if color_seed==nil then color_seed=7421 end
local vx=p.vx; if vx==nil then vx=0 end
local vy=p.vy; if vy==nil then vy=0 end
local evolve=p.evolve; if evolve==nil then evolve=0 end
local breath=p.breath; if breath==nil then breath=0 end
local period=p.period; if period==nil then period=4 end
local bp=p.bp; if bp==nil then bp=0 end
local gridalpha=p.gridalpha; if gridalpha==nil then gridalpha=0 end
local nlx=p.nlx; if nlx==nil then nlx=0 end
local nly=p.nly; if nly==nil then nly=0 end
local nla=p.nla; if nla==nil then nla=0 end
local nll=p.nll; if nll==nil then nll=960 end
local nrx=p.nrx; if nrx==nil then nrx=0 end
local nry=p.nry; if nry==nil then nry=0 end
local nrw=p.nrw; if nrw==nil then nrw=378 end
local nrh=p.nrh; if nrh==nil then nrh=378 end
local nrot=p.nrot; if nrot==nil then nrot=0 end
local nboundary=p.nboundary; if nboundary==nil then nboundary=0 end
local nfocus=p.nfocus; if nfocus==nil then nfocus=50 end
local rx=p.rx; if rx==nil then rx=0 end
local ry=p.ry; if ry==nil then ry=0 end
local rw=p.rw; if rw==nil then rw=378 end
local rh=p.rh; if rh==nil then rh=378 end
local rot=p.rot; if rot==nil then rot=0 end
local boundary=p.boundary; if boundary==nil then boundary=0 end
local core=p.core; if core==nil then core=40 end
local soft=p.soft; if soft==nil then soft=70 end
local edge_density=p.edge_density; if edge_density==nil then edge_density=30 end
local outside_hide=p.outside_hide; if outside_hide==nil then outside_hide=false end
local reference=p.reference; if reference==nil then reference="" end
local fit=p.fit; if fit==nil then fit=0 end
local ix=p.ix; if ix==nil then ix=0 end
local iy=p.iy; if iy==nil then iy=0 end
local iz=p.iz; if iz==nil then iz=100 end
local ia=p.ia; if ia==nil then ia=0 end
local mapping=p.mapping; if mapping==nil then mapping=0 end
local sampling=p.sampling; if sampling==nil then sampling=0 end
local contrast=p.contrast; if contrast==nil then contrast=50 end
local detail=p.detail; if detail==nil then detail=50 end
local levels=p.levels; if levels==nil then levels=0 end
local invert=p.invert; if invert==nil then invert=false end
local threshold=p.threshold; if threshold==nil then threshold=0 end
local feather=p.feather; if feather==nil then feather=10 end
local focus=p.focus; if focus==nil then focus=50 end
local lx=p.lx; if lx==nil then lx=0 end
local ly=p.ly; if ly==nil then ly=0 end
local la=p.la; if la==nil then la=0 end
local ll=p.ll; if ll==nil then ll=960 end
local boundaryfile=p.boundaryfile; if boundaryfile==nil then boundaryfile="" end
local boundary_channel=p.boundary_channel; if boundary_channel==nil then boundary_channel=0 end
local gridcolor=p.gridcolor; if gridcolor==nil then gridcolor=0x4d8ccc end
local individual=p.individual; if individual==nil then individual=false end
local underlay=p.underlay; if underlay==nil then underlay=0 end
local trib=p.trib; if trib==nil then trib=2 end
local warp=p.warp; if warp==nil then warp=false end
local warptype=p.warptype; if warptype==nil then warptype=0 end
local warpamount=p.warpamount; if warpamount==nil then warpamount=30 end
local warprange=p.warprange; if warprange==nil then warprange=400 end
local warplength=p.warplength; if warplength==nil then warplength=160 end
local warpx=p.warpx; if warpx==nil then warpx=0 end
local warpy=p.warpy; if warpy==nil then warpy=0 end
local warpphase=p.warpphase; if warpphase==nil then warpphase=0 end
local warpspeed=p.warpspeed; if warpspeed==nil then warpspeed=0 end
local warpreverse=p.warpreverse; if warpreverse==nil then warpreverse=false end
local bpaint={mode=p.paintb or 4,fg=p.fgb or 0x202020,
 colors={p.colb1 or 0x00A8E7,p.colb2 or 0xE40087,p.colb3 or 0xF7EA00,p.colb4 or 0x000000},
 weights={p.weightb1 or 25,p.weightb2 or 25,p.weightb3 or 25,p.weightb4 or 25},seed=p.color_seedb or 7421}
if bpaint.mode==4 then
 bpaint={mode=paint,fg=fg,colors={col1,col2,col3,col4},weights={weight1,weight2,weight3,weight4},seed=color_seed}
end
-- A uniform linear size field needs no field/noise evaluation. A linked morph
-- is an independent consumer, so retain its field only while explicitly enabled.
if (mode==1 or mode==3) and minimum>=100 and not(morph and morph_source==1) then mode=0 end
local shape_field_needed=(mode==2 or mode==4) and ((minimum<100 and strength>0) or (mode==4 and edge_density<100 and strength>0) or (mode==4 and outside_hide) or (morph and morph_source==1))
-- Canvas and field positions are object-local; the host applies object transforms later.
local w = custom and cw or obj.screen_w
local h = custom and ch or obj.screen_h
w,h=math.max(1,math.floor(w)),math.max(1,math.floor(h))
local function rgb(c)
    return math.floor(c/65536)%256/255, math.floor(c/256)%256/255, c%256/255
end
-- Build renderable cache buffers from a valid temporary image first.
local function cacheBuffer(name,bw,bh,color)
    if color==nil then obj.clearbuffer("tempbuffer",bw,bh)
    else obj.clearbuffer("tempbuffer",bw,bh,color) end
    if not obj.copybuffer(name,"tempbuffer") then error("ParametricBG: cache creation failed: "..name) end
    return name
end
-- Field sampling resolution is independent of the radius in object coordinates.
local function boundaryResolution(bw,bh)
    local scale=math.min(1,1024/math.max(bw,bh))
    return math.max(2,math.ceil(bw*scale)),math.max(2,math.ceil(bh*scale))
end
local function image(path,key,needed)
    if needed then
        local loaded=false
        if path and path~="" then
            loaded=obj.load("image",path)
            if not loaded and path:lower():match("%.svg$") then
                local raster_size=math.max(1,math.ceil(math.max(wa,ha,wb,hb)))
                if key=="reference" then raster_size=math.max(w,h) end
                if key=="boundary" then raster_size=math.min(1024,math.max(2,math.ceil(math.max(rw,rh)*2))) end
                loaded=obj.load("figure",path,0xffffff,raster_size)
            end
        end
        if not loaded then
            error("ParametricBG：有効な画像を選択："..key)
        end
        local iw,ih=obj.getpixel()
        if not iw or iw<1 or ih<1 then error("ParametricBG：画像を読めません："..key) end
        obj.copybuffer("cache:parametricbg_"..key,"object")
        return iw,ih,"cache:parametricbg_"..key
    end
    return 1,1,"cache:parametricbg_empty"
end
cacheBuffer("cache:parametricbg_empty",1,1,0xffffff)
local iw,ih,refbuffer=image(reference,"reference",mode==5)
local function distanceField(source,sw,sh,name,channel,needMaximum)
    local function buffer(suffix,bw,bh) return cacheBuffer("cache:parametricbg_"..name..suffix,bw,bh) end
    local first,second=buffer("NearestA",sw,sh),buffer("NearestB",sw,sh)
    obj.pixelshader("pbg_seed@ParametricBG_Common",first,{source},{sw,sh,0,channel},"copy","clip")
    local jump=1
    while jump<math.max(sw,sh) do jump=jump*2 end
    jump=jump/2
    while jump>=1 do
        obj.pixelshader("pbg_jump@ParametricBG_Common",second,{first},{sw,sh,jump,channel},"copy","clip")
        first,second=second,first;jump=jump/2
    end
    local field=buffer("Field",sw,sh)
    obj.pixelshader("pbg_distance@ParametricBG_Common",field,{first,source},{sw,sh,0,channel},"copy","clip")
    local maximum="cache:parametricbg_empty"
    if needMaximum then
        maximum=field
        local level=0
        repeat
            local bw,bh=math.max(1,math.ceil(sw/2)),math.max(1,math.ceil(sh/2))
            local target=buffer("Max"..level,bw,bh)
            obj.pixelshader("pbg_max@ParametricBG_Common",target,{maximum},{sw,sh,0,0},"copy","clip")
            maximum=target;sw,sh=bw,bh;level=level+1
        until sw==1 and sh==1
    end
    return field,maximum
end
local nativeShapes={[8]="五角形",[9]="星型",[10]="ハート"}
local function nativeFigure(name,key,size)
    if not obj.load("figure",name,0xffffff,size) then error("ParametricBG: figure load failed: "..name) end
    local fw,fh=obj.getpixel()
    obj.copybuffer("cache:parametricbg_"..key,"object")
    return fw,fh,"cache:parametricbg_"..key
end
local nativeSize=math.max(32,math.ceil(math.max(wa,ha,morph and wb or 0,morph and hb or 0)))
local function shapeSource(kind,path,key,enabled)
    if not enabled then return 1,1,"cache:parametricbg_empty" end
    if kind>=8 then
        local sw,sh,source=nativeFigure(nativeShapes[kind],key,nativeSize)
        local field=distanceField(source,sw,sh,key,0,false)
        return sw,sh,field
    end
    return image(path,key,kind==7)
end
local aw,ah,abuffer=shapeSource(shapea,filea,"shapeA",true)
local bw,bh,bbuffer
if morph and shapea==shapeb and shapea>=8 then bw,bh,bbuffer=aw,ah,abuffer
else bw,bh,bbuffer=shapeSource(shapeb,fileb,"shapeB",morph) end
local boundw,boundh,boundbuffer=1,1,"cache:parametricbg_empty"
local maxbuffer="cache:parametricbg_empty"
if shape_field_needed and boundary>=2 then
    local source
    if boundary==2 then boundw,boundh,source=image(boundaryfile,"boundary",true)
    elseif boundary<=7 then
        local figures={[3]="三角形",[4]="五角形",[5]="六角形",[6]="星型",[7]="ハート"}
        boundw,boundh,source=nativeFigure(figures[boundary],"boundaryNative",math.min(1024,math.max(2,math.ceil(math.max(rw,rh)*2))))
    else
        boundw,boundh=boundaryResolution(math.max(2,math.ceil(rw*2)),math.max(2,math.ceil(rh*2)))
        source="cache:parametricbg_boundarySymbol"
        cacheBuffer(source,boundw,boundh)
        obj.pixelshader("pbg_symbol@ParametricBG_Common",source,nil,{boundw,boundh,boundary,0,arm/100,star/100,0,0},"copy","clip")
    end
    local samplew,sampleh=boundaryResolution(boundw,boundh)
    if samplew~=boundw or sampleh~=boundh then
        local sampled=cacheBuffer("cache:parametricbg_boundarySample",samplew,sampleh)
        obj.pixelshader("pbg_resize@ParametricBG_Common",sampled,{source},{},"copy","clamp")
        source=sampled;boundw=samplew;boundh=sampleh
    end
    boundbuffer,maxbuffer=distanceField(source,boundw,boundh,"boundary",boundary==2 and boundary_channel or 0,true)
end
local constants={}
local function row(a,b,c,d)
    constants[#constants+1]=a;constants[#constants+1]=b
    constants[#constants+1]=c;constants[#constants+1]=d
end
local function flag(b) return b and 1 or 0 end
local rad=math.pi/180
local time=obj.time or 0

local warpStrength=warp and warpamount/100*(warpreverse and -1 or 1) or 0
local warpPhase=(warpphase+warpspeed*time)*rad
local function deformPoint(x,y)
    if warpStrength==0 then return x,y end
    local dx,dy=x-warpx,y-warpy
    if warptype==0 then return x+warpStrength*warprange*.25*math.sin(dy*2*math.pi/warplength-warpPhase),y end
    local r=math.sqrt(dx*dx+dy*dy)
    if r<1e-8 then return x,y end
    if warptype==2 then
        local angle=warpStrength*2*math.pi*math.cos(warpPhase)*math.exp(-(r/warprange)^2)
        local co,si=math.cos(angle),math.sin(angle)
        return warpx+co*dx-si*dy,warpy+si*dx+co*dy
    end
    local target
    if warptype==1 then
        local k=2*math.pi/warplength
        local amplitude=.85*warpStrength/(k+1/warprange)
        target=r+amplitude*math.sin(k*r-warpPhase)*(1-math.exp(-r/warprange))
    else target=r*(1+.9*warpStrength*math.cos(warpPhase)*math.exp(-(r/warprange)^2)) end
    return warpx+dx*target/r,warpy+dy*target/r
end
local warpBound=0
if warpStrength~=0 then
    if warptype==0 then warpBound=math.abs(warpStrength)*warprange*.25
    elseif warptype==1 then warpBound=.85*math.abs(warpStrength)/(2*math.pi/warplength+1/warprange)
    elseif warptype==2 then warpBound=math.abs(warpStrength)*2*math.pi*warprange/math.sqrt(2*math.exp(1))
    else warpBound=.9*math.abs(warpStrength)*warprange/math.sqrt(2*math.exp(1)) end
end

local angleb=ab
if shortest then angleb=aa+(ab-aa+180)%360-180 end
local function seedparts(n) return n%65536,math.floor(n/65536) end
local sl,sh=seedparts(seed)
local cl,cs=seedparts(color_seed)
row(w,h,mode,output) -- c0
row(sx,hexgrid and sx*math.sqrt(3)/2 or sy,flag(stagger or hexgrid),jitter/100)
row(gx+vx*time,gy+vy*time,ga*rad,density/100)
row(sl,sh,cl,cs)
row(shapea,wa,ha,aa*rad)
row(shapeb,wb,hb,angleb*rad)
row(ra,rb,arm/100,star/100)
row(minimum/100,strength/100,flag(reverse),curve)
row(mode==3 and nlx or lx,mode==3 and nly or ly,(mode==3 and nla or la)*rad,mode==3 and nll or ll)
row(mode==3 and nrx or rx,mode==3 and nry or ry,mode==3 and nrw or rw,mode==3 and nrh or rh)
row((mode==3 and nrot or rot)*rad,mode==3 and nboundary or boundary,(mode==3 and nfocus or focus)/100,base)
row(ns,na/100,oct,(phase+evolve*time)*rad)
row(nx,ny,core/100,soft/100)
row(edge_density/100,0,0,flag(outside_hide))
row(flag(morph),morph_source,flag(morph_reverse),tri)
row(mx,my,ma*rad,ml)
row(iw,ih,fit,iz/100)
row(ix,iy,ia*rad,mapping)
row(contrast/50,detail/100,levels/100,flag(invert))
row(threshold/100,feather/100,sampling,paint)
row(marginx,marginy,flag(whole),opacity/100)
local r,g,b=rgb(bg);row(r,g,b,transparent and bga/100 or 1)
r,g,b=rgb(fg);row(r,g,b,0)
for _,c in ipairs({col1,col2,col3,col4}) do r,g,b=rgb(c);row(r,g,b,0) end
row(weight1,weight2,weight3,weight4)
row(aw,ah,bw,bh)
row(assetfit,gridalpha>0 and 1 or 0,gridalpha/100,1-breath/100*(.5-.5*math.sin(2*math.pi*time/period+bp*rad)))
row(linewidth,depth,depth_angle*rad,0)
local gr,gg,gb=rgb(gridcolor);row(gr,gg,gb,0)
row(boundw,boundh,math.sqrt(boundw*boundw+boundh*boundh),boundary_channel)
row(0,0,w,h)
row(0,0,0,0)
row(underlay,trib,0,0)
row(flag(warpStrength~=0),warptype,warpStrength,warprange)
row(warpx,warpy,warplength,warpPhase)
row(bpaint.mode,rgb(bpaint.fg))
for _,color in ipairs(bpaint.colors)do r,g,b=rgb(color);row(r,g,b,0)end
row(unpack(bpaint.weights))
local bsl,bsh=seedparts(bpaint.seed);row(bsl,bsh,0,0)
if individual and output==0 then
    (function()
-- A metadata image evaluates the very same field/hash tests as the fast renderer.
-- Only surviving cells are submitted to the host's individual-object pipeline.
local resources={refbuffer,abuffer,bbuffer,boundbuffer,maxbuffer}
local columns=sx
local rows=hexgrid and sx*math.sqrt(3)/2 or sy
local stagger=stagger or hexgrid
local ca,sa=math.cos(ga*rad),math.sin(ga*rad)
local offsetx,offsety=gx+vx*time,gy+vy*time
local maxw=morph and math.max(wa,wb) or wa
local maxh=morph and math.max(ha,hb) or ha
local radius=math.sqrt(maxw*maxw+maxh*maxh)*.5+depth*.5+1
local halfw,halfh=w*.5+radius+warpBound,h*.5+radius+warpBound
local gridcx=-ca*offsetx-sa*offsety
local gridcy=sa*offsetx-ca*offsety
local gridhw=math.abs(ca)*halfw+math.abs(sa)*halfh+columns*jitter/200
local gridhh=math.abs(sa)*halfw+math.abs(ca)*halfh+rows*jitter/200
local colfirst=math.ceil((gridcx-gridhw)/columns-(stagger and .5 or 0))
local collast=math.floor((gridcx+gridhw)/columns)
local rowfirst=math.ceil((gridcy-gridhh)/rows)
local rowlast=math.floor((gridcy+gridhh)/rows)
local mapw,maph=math.max(1,collast-colfirst+1),math.max(1,rowlast-rowfirst+1)
constants[137],constants[138],constants[139]=colfirst,rowfirst,3
obj.clearbuffer("object",mapw,maph)
obj.pixelshader("pbg@ParametricBG_Common","object",resources,constants,"copy","clip")
obj.pixeloption("get","object")
local cells={}
for y=0,maph-1 do
    for x=0,mapw-1 do
        local _,a=obj.getpixel(x,y,"col")
        if a>.5 then cells[#cells+1]={colfirst+x,rowfirst+y} end
    end
end

-- Unsigned arithmetic matches the shader's 32-bit integer hash. SDK XOR is
-- optional here; the arithmetic fallback also runs under the plain Lua runtime.
local modulus=4294967296
local function xor32(a,b)
    if XOR then return XOR(a,b)%modulus end
    local result,bit=0,1
    while a>0 or b>0 do
        if a%2~=b%2 then result=result+bit end
        a,b=math.floor(a/2),math.floor(b/2);bit=bit*2
    end
    return result
end
local function multiply(a,b)
    local al,bl=a%65536,b%65536
    return (al*bl+(math.floor(a/65536)*bl+al*math.floor(b/65536))*65536)%modulus
end
local function random(column,row,channel)
    local value=xor32(xor32(multiply(column%modulus,2654435769),multiply(row%modulus,2246822507)),xor32(seed,channel))
    value=xor32(value,math.floor(value/65536));value=multiply(value,2146121005)
    value=xor32(value,math.floor(value/32768));value=multiply(value,2221713035)
    value=xor32(value,math.floor(value/65536))
    return math.floor(value/256)/16777216
end
local base={}
for _,name in ipairs({"ox","oy","oz","rx","ry","rz","cx","cy","cz","sx","sy","sz","alpha"}) do
    base[name]=obj[name]
end
local function restore()
    for name,value in pairs(base) do obj[name]=value end
end
-- Draw the backing plane outside the per-dot effect chain.
constants[139]=2
obj.clearbuffer("object",w,h)
obj.pixelshader("pbg@ParametricBG_Common","object",resources,constants,"copy","clip")
obj.draw()
local tile=math.max(1,math.ceil(radius*2))
if #cells>0 then
    obj.multiobject(#cells,function()
        restore()
        local id=cells[obj.index+1]
        local column,row=id[1],id[2]
        local jx,jy=0,0
        if jitter>0 then jx=(random(column,row,7)-.5)*columns*jitter/100;jy=(random(column,row,13)-.5)*rows*jitter/100 end
        local localx=(column+(stagger and row%2*.5 or 0))*columns+jx
        local localy=row*rows+jy
        local centerx=ca*localx-sa*localy+offsetx
        local centery=sa*localx+ca*localy+offsety
        centerx,centery=deformPoint(centerx,centery)
        constants[133],constants[134],constants[135],constants[136]=centerx,centery,tile,tile
        constants[137],constants[138],constants[139]=column,row,1
        obj.clearbuffer("object",tile,tile)
        obj.pixelshader("pbg@ParametricBG_Common","object",resources,constants,"copy","clip")
        obj.ox=(base.ox or 0)+centerx
        obj.oy=(base.oy or 0)+centery
        obj.setoption("draw_state",false)
    end)
end
restore()
obj.setoption("draw_state",true)

    end)()
    return
end
obj.clearbuffer("object",w,h)
obj.pixelshader("pbg@ParametricBG_Common","object",{refbuffer,abuffer,bbuffer,boundbuffer,maxbuffer},constants,"copy","clip")
obj.setoption("draw_state",false)

end
