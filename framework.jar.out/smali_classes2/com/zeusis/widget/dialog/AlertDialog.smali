.class public Lcom/zeusis/widget/dialog/AlertDialog;
.super Lcom/zeusis/widget/dialog/ZeusisDialog;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;,
        Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x4

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5

.field public static final THEME_HOLO_DARK:I = 0x2

.field public static final THEME_HOLO_LIGHT:I = 0x3

.field public static final THEME_TRADITIONAL:I = 0x1


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 30
    invoke-static {p1, p2}, Lcom/zeusis/widget/dialog/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/zeusis/widget/dialog/AlertDialog;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .prologue
    const v2, 0x10304d8

    const v1, 0x10304d7

    .line 34
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    return v1

    .line 36
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 37
    return v2

    .line 38
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 39
    return v1

    .line 40
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 41
    return v2

    .line 42
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 43
    return v1

    .line 44
    :cond_4
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_5

    .line 45
    return v1

    .line 47
    :cond_5
    return v1
.end method
