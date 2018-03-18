.class public final enum Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;
.super Ljava/lang/Enum;
.source "ZeusisSwitchButtonStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

.field public static final enum E_SWITCH_STYLE_DARK:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

.field public static final enum E_SWITCH_STYLE_LIGHT:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    const-string/jumbo v1, "E_SWITCH_STYLE_LIGHT"

    invoke-direct {v0, v1, v2}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_LIGHT:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    .line 12
    new-instance v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    const-string/jumbo v1, "E_SWITCH_STYLE_DARK"

    invoke-direct {v0, v1, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_DARK:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    sget-object v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_LIGHT:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->E_SWITCH_STYLE_DARK:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->$VALUES:[Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    return-object v0
.end method

.method public static values()[Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;->$VALUES:[Lcom/zeusis/widget/switchbutton/ZeusisSwitchButtonStyle;

    return-object v0
.end method
