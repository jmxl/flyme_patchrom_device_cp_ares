.class public Lcom/zeusis/appsnapshot/util/PicComposeTask;
.super Landroid/os/AsyncTask;
.source "PicComposeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/zeusis/appsnapshot/util/CropPicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

.field private listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

.field private preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/zeusis/appsnapshot/util/CropPicInfo;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/ScreenShootUtil;->composePic(Lcom/zeusis/appsnapshot/util/CropPicInfo;Lcom/zeusis/appsnapshot/util/CropPicInfo;)Lcom/zeusis/appsnapshot/util/CropPicInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->doInBackground([Ljava/lang/Void;)Lcom/zeusis/appsnapshot/util/CropPicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBitmapInfo()Lcom/zeusis/appsnapshot/util/CropPicInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    return-object v0
.end method

.method public getListener()Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    return-object v0
.end method

.method public getPreBitmapInfo()Lcom/zeusis/appsnapshot/util/CropPicInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    invoke-interface {v0}, Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;->onCancelled()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 2
    .param p1, "picInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iput-object v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iget-object v0, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    iput-object v1, v0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    invoke-interface {v0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;->onFinished(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    .line 57
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "picInfo"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .end local p1    # "picInfo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zeusis/appsnapshot/util/PicComposeTask;->onPostExecute(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    return-void
.end method

.method public setCurrentBitmapInfo(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 0
    .param p1, "currentBitmapInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->currentBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 11
    return-void
.end method

.method public setListener(Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->listener:Lcom/zeusis/appsnapshot/util/PicComposeTask$TaskListener;

    .line 31
    return-void
.end method

.method public setPreBitmapInfo(Lcom/zeusis/appsnapshot/util/CropPicInfo;)V
    .locals 0
    .param p1, "preBitmapInfo"    # Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/PicComposeTask;->preBitmapInfo:Lcom/zeusis/appsnapshot/util/CropPicInfo;

    .line 15
    return-void
.end method
