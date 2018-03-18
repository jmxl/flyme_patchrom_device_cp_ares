.class final Landroid/app/ActivityManager$ResizedTaskInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$ResizedTaskInfo;
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
        "Landroid/app/ActivityManager$ResizedTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$ResizedTaskInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2446
    new-instance v0, Landroid/app/ActivityManager$ResizedTaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$ResizedTaskInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$ResizedTaskInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2445
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ResizedTaskInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$ResizedTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$ResizedTaskInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2450
    new-array v0, p1, [Landroid/app/ActivityManager$ResizedTaskInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2449
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ResizedTaskInfo$1;->newArray(I)[Landroid/app/ActivityManager$ResizedTaskInfo;

    move-result-object v0

    return-object v0
.end method
