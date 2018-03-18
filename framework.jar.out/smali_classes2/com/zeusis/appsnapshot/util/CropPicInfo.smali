.class public Lcom/zeusis/appsnapshot/util/CropPicInfo;
.super Ljava/lang/Object;
.source "CropPicInfo.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public isFoot:Z

.field public isHead:Z

.field public picHeight:I

.field public picWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isHead:Z

    .line 12
    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/CropPicInfo;->isFoot:Z

    .line 5
    return-void
.end method
