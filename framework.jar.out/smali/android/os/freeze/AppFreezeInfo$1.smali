.class final Landroid/os/freeze/AppFreezeInfo$1;
.super Ljava/lang/Object;
.source "AppFreezeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/freeze/AppFreezeInfo;
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
        "Landroid/os/freeze/AppFreezeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/freeze/AppFreezeInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 66
    new-instance v0, Landroid/os/freeze/AppFreezeInfo;

    invoke-direct {v0, p1}, Landroid/os/freeze/AppFreezeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/os/freeze/AppFreezeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/freeze/AppFreezeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/freeze/AppFreezeInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 71
    new-array v0, p1, [Landroid/os/freeze/AppFreezeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/os/freeze/AppFreezeInfo$1;->newArray(I)[Landroid/os/freeze/AppFreezeInfo;

    move-result-object v0

    return-object v0
.end method
