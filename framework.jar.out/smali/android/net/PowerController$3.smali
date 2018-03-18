.class final Landroid/net/PowerController$3;
.super Ljava/lang/Object;
.source "PowerController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/PowerController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/PowerController;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .local v1, "tmp":I
    new-instance v0, Landroid/net/PowerController;

    invoke-direct {v0, v1}, Landroid/net/PowerController;-><init>(I)V

    .line 238
    .local v0, "powerCtl":Landroid/net/PowerController;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Landroid/net/PowerController$3;->createFromParcel(Landroid/os/Parcel;)Landroid/net/PowerController;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/PowerController;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 242
    new-array v0, p1, [Landroid/net/PowerController;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroid/net/PowerController$3;->newArray(I)[Landroid/net/PowerController;

    move-result-object v0

    return-object v0
.end method
