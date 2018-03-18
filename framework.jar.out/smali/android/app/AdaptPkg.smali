.class public Landroid/app/AdaptPkg;
.super Ljava/lang/Object;
.source "AdaptPkg.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AdaptPkg$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AdaptPkg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Ljava/lang/String;

.field private flag:Z

.field private inputId:Ljava/lang/String;

.field private minorFlag:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/app/AdaptPkg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/AdaptPkg;->flag:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/AdaptPkg;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/AdaptPkg;->minorFlag:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/app/AdaptPkg$1;

    invoke-direct {v0}, Landroid/app/AdaptPkg$1;-><init>()V

    sput-object v0, Landroid/app/AdaptPkg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "inputId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/app/AdaptPkg;->packageName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/app/AdaptPkg;->activity:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Landroid/app/AdaptPkg;->inputId:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 105
    if-ne p0, p1, :cond_0

    .line 106
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_0
    instance-of v2, p1, Landroid/app/AdaptPkg;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 109
    nop

    nop

    .line 110
    .local v0, "other":Landroid/app/AdaptPkg;
    iget-object v2, v0, Landroid/app/AdaptPkg;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/AdaptPkg;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v1, v0, Landroid/app/AdaptPkg;->activity:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/AdaptPkg;->activity:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 110
    :cond_1
    return v1

    .line 113
    .end local v0    # "other":Landroid/app/AdaptPkg;
    :cond_2
    return v1
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/AdaptPkg;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getIntputId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/app/AdaptPkg;->inputId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/app/AdaptPkg;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/app/AdaptPkg;->flag:Z

    return v0
.end method

.method public isMinorFlag()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/app/AdaptPkg;->minorFlag:Z

    return v0
.end method

.method public setFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/app/AdaptPkg;->flag:Z

    .line 67
    return-void
.end method

.method public setIntputId(Ljava/lang/String;)V
    .locals 0
    .param p1, "intputId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/app/AdaptPkg;->inputId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMinorFlag(Z)V
    .locals 0
    .param p1, "minorFlag"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/app/AdaptPkg;->minorFlag:Z

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Landroid/app/AdaptPkg;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/app/AdaptPkg;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/app/AdaptPkg;->inputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Landroid/app/AdaptPkg;->flag:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Landroid/app/AdaptPkg;->minorFlag:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_1
.end method
