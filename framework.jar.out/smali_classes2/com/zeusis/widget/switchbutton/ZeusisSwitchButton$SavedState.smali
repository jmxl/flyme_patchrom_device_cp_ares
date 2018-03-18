.class Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ZeusisSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field offText:Ljava/lang/CharSequence;

.field onText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1069
    new-instance v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState$1;

    invoke-direct {v0}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState$1;-><init>()V

    .line 1068
    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1047
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1057
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 1058
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 1055
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1051
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1063
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1064
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1065
    iget-object v0, p0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1062
    return-void
.end method
