.class final Lcom/journeyui/smartpolicy/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/smartpolicy/AppInfo;
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
        "Lcom/journeyui/smartpolicy/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/journeyui/smartpolicy/AppInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    new-instance v0, Lcom/journeyui/smartpolicy/AppInfo;

    invoke-direct {v0, p1}, Lcom/journeyui/smartpolicy/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/journeyui/smartpolicy/AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/journeyui/smartpolicy/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/journeyui/smartpolicy/AppInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Lcom/journeyui/smartpolicy/AppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/journeyui/smartpolicy/AppInfo$1;->newArray(I)[Lcom/journeyui/smartpolicy/AppInfo;

    move-result-object v0

    return-object v0
.end method
