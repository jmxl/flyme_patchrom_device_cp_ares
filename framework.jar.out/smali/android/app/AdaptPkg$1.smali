.class final Landroid/app/AdaptPkg$1;
.super Ljava/lang/Object;
.source "AdaptPkg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AdaptPkg;
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
        "Landroid/app/AdaptPkg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AdaptPkg;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "inputId":Ljava/lang/String;
    new-instance v3, Landroid/app/AdaptPkg;

    invoke-direct {v3, v2, v0, v1}, Landroid/app/AdaptPkg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v3, "result":Landroid/app/AdaptPkg;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v3, v4}, Landroid/app/AdaptPkg;->-set0(Landroid/app/AdaptPkg;Z)Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v3, v5}, Landroid/app/AdaptPkg;->-set1(Landroid/app/AdaptPkg;Z)Z

    .line 80
    return-object v3

    :cond_0
    move v4, v6

    .line 78
    goto :goto_0

    :cond_1
    move v5, v6

    .line 79
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/AdaptPkg$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AdaptPkg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/AdaptPkg;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Landroid/app/AdaptPkg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/AdaptPkg$1;->newArray(I)[Landroid/app/AdaptPkg;

    move-result-object v0

    return-object v0
.end method
