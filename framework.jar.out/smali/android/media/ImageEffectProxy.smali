.class public Landroid/media/ImageEffectProxy;
.super Ljava/lang/Object;
.source "ImageEffectProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageEffectProxy$EventHandler;,
        Landroid/media/ImageEffectProxy$FaceDataCallback;,
        Landroid/media/ImageEffectProxy$FaceInfoCallback;,
        Landroid/media/ImageEffectProxy$GeneticCallback;,
        Landroid/media/ImageEffectProxy$JpegDataCallback;,
        Landroid/media/ImageEffectProxy$PostViewCallback;,
        Landroid/media/ImageEffectProxy$ProcessCallback;,
        Landroid/media/ImageEffectProxy$TrackObjectCallback;
    }
.end annotation


# static fields
.field public static final MS_PLUGINT_CALLBACK_BESTPICK_FACES:I = 0x65

.field public static final MS_PLUGINT_CALLBACK_TRACK_TARGET:I = 0x64

.field public static final MS_PLUGIN_CALLBACK_BESTPICK_FACE_DATA:I = 0x67

.field public static final MS_PLUGIN_CALLBACK_BESTPICK_REFERENCE_IMAGE_DATA:I = 0x68

.field public static final MS_PLUGIN_CALLBACK_FACEINFO_ACK:I = 0x6a

.field public static final MS_PLUGIN_CALLBACK_JPEG_DATA:I = 0x6c

.field public static final MS_PLUGIN_CALLBACK_PROCESSING_SATUS:I = 0x66

.field private static final TAG:Ljava/lang/String; = "ImageEffectProxy"


# instance fields
.field private mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

.field private mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

.field private mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

.field private mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

.field private mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

.field private mNativeContext:J

.field private mNativeProxy:J

.field private mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

.field private mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

.field private mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;


# direct methods
.method static synthetic -get0(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceInfoCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$GeneticCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$JpegDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$PostViewCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$ProcessCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$TrackObjectCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "imageeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v1, "ImageEffectProxy"

    const-string/jumbo v2, ">>>>>ImageEffectProxy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Landroid/media/ImageEffectProxy$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/ImageEffectProxy$EventHandler;-><init>(Landroid/media/ImageEffectProxy;Landroid/media/ImageEffectProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    .line 50
    :goto_0
    invoke-static {}, Landroid/media/ImageEffectProxy;->native_init()V

    .line 39
    return-void

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v1, Landroid/media/ImageEffectProxy$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/ImageEffectProxy$EventHandler;-><init>(Landroid/media/ImageEffectProxy;Landroid/media/ImageEffectProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    goto :goto_0

    .line 47
    :cond_1
    iput-object v3, p0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "imageEffectProxy_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "imageEffectProxy_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageEffectProxy;

    .line 215
    .local v0, "ieProxy":Landroid/media/ImageEffectProxy;
    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v2, "ImageEffectProxy"

    const-string/jumbo v3, "invalid effect proxy in postEventFromNative "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    if-eqz v2, :cond_1

    .line 221
    const-string/jumbo v2, "ImageEffectProxy"

    const-string/jumbo v3, ">>>>>>>>>do setmsg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    invoke-interface {v2, p2, v0}, Landroid/media/ImageEffectProxy$ProcessCallback;->onProcess(ILandroid/media/ImageEffectProxy;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 226
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/ImageEffectProxy;->mEventHandler:Landroid/media/ImageEffectProxy$EventHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native ProcessData(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/media/ImageEffectProxy;->native_finalize()V

    return-void
.end method

.method public native getParameters()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native release()V
.end method

.method public native setBitmapData(ILandroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setFaceDataCb(Landroid/media/ImageEffectProxy$FaceDataCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$FaceDataCallback;

    .prologue
    .line 114
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setFaceDataCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;

    .line 113
    return-void
.end method

.method public setFaceInfoCb(Landroid/media/ImageEffectProxy$FaceInfoCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$FaceInfoCallback;

    .prologue
    .line 99
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setFaceInfoCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;

    .line 98
    return-void
.end method

.method public setGeneralCb(Landroid/media/ImageEffectProxy$GeneticCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$GeneticCallback;

    .prologue
    .line 124
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setGeneralCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;

    .line 123
    return-void
.end method

.method public setJpegDataCb(Landroid/media/ImageEffectProxy$JpegDataCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$JpegDataCallback;

    .prologue
    .line 109
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setJpegDataCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;

    .line 108
    return-void
.end method

.method public native setParameters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPostViewCb(Landroid/media/ImageEffectProxy$PostViewCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$PostViewCallback;

    .prologue
    .line 104
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setPostViewCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;

    .line 103
    return-void
.end method

.method public setProcessCb(Landroid/media/ImageEffectProxy$ProcessCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$ProcessCallback;

    .prologue
    .line 94
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setProcessCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;

    .line 93
    return-void
.end method

.method public setTrackObjectCb(Landroid/media/ImageEffectProxy$TrackObjectCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/ImageEffectProxy$TrackObjectCallback;

    .prologue
    .line 119
    const-string/jumbo v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>>>>>>>>>setTrackObjectCb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;

    .line 118
    return-void
.end method

.method public native uninit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
