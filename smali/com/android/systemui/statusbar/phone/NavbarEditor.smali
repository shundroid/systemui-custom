.class public Lcom/android/systemui/statusbar/phone/NavbarEditor;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;,
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    }
.end annotation


# static fields
.field private static final ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field private static final BUTTON_IDS:[I

.field public static final NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field private static final SMALL_BUTTON_IDS:[I

.field private static sIsDevicePhone:Ljava/lang/Boolean;

.field private static final sLocation:[I


# instance fields
.field private final mButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDragOrigin:F

.field private mInEditMode:Z

.field private mLongPressed:Z

.field private mParent:Landroid/view/View;

.field private mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "empty"

    const v2, 0x7f090041

    const v3, 0x7f0900e7

    const/4 v4, 0x0

    const v5, 0x7f0200c6

    const v6, 0x7f0200c7

    const v7, 0x7f0200c8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "home"

    const v2, 0x7f09003d

    const v3, 0x7f09008b

    const/4 v4, 0x3

    const v5, 0x7f0200d1

    const v6, 0x7f0200d2

    const v7, 0x7f0200d1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "back"

    const v2, 0x7f090040

    const v3, 0x7f09008a

    const/4 v4, 0x4

    const v5, 0x7f0200c9

    const v6, 0x7f0200cc

    const v7, 0x7f0200cd

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "search"

    const v2, 0x7f09003f

    const v3, 0x7f09008a

    const/16 v4, 0x54

    const v5, 0x7f0200de

    const v6, 0x7f0200df

    const v7, 0x7f0200e0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "recent"

    const v2, 0x7f09003e

    const v3, 0x7f09008d

    const/4 v4, 0x0

    const v5, 0x7f0200db

    const v6, 0x7f0200dc

    const v7, 0x7f0200dd

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu0"

    const v2, 0x7f090042

    const v3, 0x7f09008c

    const/16 v4, 0x52

    const v5, 0x7f0200d7

    const v6, 0x7f0200da

    const v7, 0x7f0200d7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu1"

    const v2, 0x7f090043

    const v3, 0x7f09008c

    const/16 v4, 0x52

    const v5, 0x7f0200d7

    const v6, 0x7f0200da

    const v7, 0x7f0200d7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu2"

    const v2, 0x7f090044

    const v3, 0x7f09008c

    const/16 v4, 0x52

    const v5, 0x7f0200d8

    const v6, 0x7f0200d9

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "dpad_left"

    const/4 v2, 0x0

    const v3, 0x7f090012

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0200d3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "dpad_right"

    const/4 v2, 0x0

    const v3, 0x7f090013

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0200d4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 144
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0x7f08000f
        0x7f080011
        0x7f080012
        0x7f080013
        0x7f080014
        0x7f080015
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f08000f
        0x7f080015
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "orientation"    # Z

    .prologue
    const/4 v8, 0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    .line 93
    new-instance v6, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    .line 154
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    .line 158
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v7, 0x7f08000e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 159
    .local v1, "dpadLeft":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    :goto_0
    invoke-virtual {v1, v6, p2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    .line 161
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget v4, v0, v3

    .line 164
    .local v4, "id":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v5    # "len$":I
    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    goto :goto_0

    .line 167
    .restart local v0    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v7, 0x7f080016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 168
    .local v2, "dpadRight":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    :goto_2
    invoke-virtual {v2, v6, p2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    .line 170
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void

    .line 168
    :cond_2
    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavbarEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavbarEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    return v0
.end method

.method static synthetic access$500()[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    return-object v0
.end method

.method private adjustPadding(I)V
    .locals 11
    .param p1, "visibleCount"    # I

    .prologue
    const/16 v10, 0x8

    .line 408
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v9, 0x7f080010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 409
    .local v7, "viewParent":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 411
    .local v5, "totalViews":I
    const/4 v6, 0x0

    .local v6, "v":I
    :goto_0
    if-ge v6, v5, :cond_6

    .line 412
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, "currentKey":Landroid/view/View;
    instance-of v8, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-nez v8, :cond_1

    .line 411
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 416
    :cond_1
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 417
    .local v4, "nextPadding":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 421
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 422
    .local v3, "nextKey":Landroid/view/View;
    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 423
    .local v2, "nextInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 425
    .local v0, "currentInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v0, v8, :cond_5

    .line 426
    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-ne v2, v8, :cond_2

    const/4 v8, 0x1

    if-le p1, v8, :cond_4

    .line 427
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 422
    .end local v0    # "currentInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v2    # "nextInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    move-object v2, v8

    goto :goto_2

    .line 429
    .restart local v0    # "currentInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .restart local v2    # "nextInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :cond_4
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 433
    :cond_5
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 436
    .end local v0    # "currentInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v1    # "currentKey":Landroid/view/View;
    .end local v2    # "nextInfo":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v3    # "nextKey":Landroid/view/View;
    .end local v4    # "nextPadding":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private findInterceptingView(FLandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 212
    .local v3, "otherView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    if-eq v3, p2, :cond_0

    .line 216
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLocationOnScreen([I)V

    .line 221
    sget-object v5, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    aget v4, v5, v4

    int-to-float v2, v4

    .line 222
    .local v2, "otherPos":F
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 224
    .local v1, "otherDimension":F
    :goto_1
    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v1, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 228
    .end local v1    # "otherDimension":F
    .end local v2    # "otherPos":F
    .end local v3    # "otherView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :goto_2
    return-object v3

    .line 221
    .restart local v3    # "otherView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 222
    .restart local v2    # "otherPos":F
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v1, v4

    goto :goto_1

    .line 228
    .end local v2    # "otherPos":F
    .end local v3    # "otherView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isDevicePhone(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 189
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 190
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 192
    .local v0, "outDisplayInfo":Landroid/view/DisplayInfo;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 194
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 195
    .local v1, "shortSize":I
    mul-int/lit16 v4, v1, 0xa0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    div-int v2, v4, v5

    .line 198
    .local v2, "shortSizeDp":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    .line 201
    .end local v0    # "outDisplayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "shortSize":I
    .end local v2    # "shortSizeDp":I
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 198
    .restart local v0    # "outDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "shortSize":I
    .restart local v2    # "shortSizeDp":I
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private switchId(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 325
    .local v1, "parent":Landroid/view/ViewGroup;
    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 326
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_0

    .line 327
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 328
    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 335
    .local v2, "targetIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 336
    .local v0, "draggedIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-static {v3, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 337
    return-void

    .line 330
    .end local v0    # "draggedIndex":I
    .end local v2    # "targetIndex":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 331
    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    :cond_0
    const/4 v10, 0x0

    .line 313
    :goto_0
    return v10

    .line 237
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    .line 238
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 239
    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 240
    sget-object v11, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    aget v10, v11, v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    .line 241
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {p1, v10, v11, v12}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_2
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 240
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 243
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 245
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 246
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 249
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 250
    .local v9, "viewParent":Landroid/view/ViewGroup;
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 251
    .local v8, "pos":F
    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v2, v10

    .line 252
    .local v2, "buttonSize":F
    :goto_4
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v6, v10

    .line 253
    .local v6, "min":F
    :goto_5
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v5, v10

    .line 257
    .local v5, "max":F
    :goto_6
    cmpg-float v10, v8, v6

    if-ltz v10, :cond_7

    cmpl-float v10, v8, v5

    if-lez v10, :cond_c

    .line 258
    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    .line 250
    .end local v2    # "buttonSize":F
    .end local v5    # "max":F
    .end local v6    # "min":F
    .end local v8    # "pos":F
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    goto :goto_3

    .line 251
    .restart local v8    # "pos":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v2, v10

    goto :goto_4

    .line 252
    .restart local v2    # "buttonSize":F
    :cond_a
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    sub-float v6, v10, v11

    goto :goto_5

    .line 253
    .restart local v6    # "min":F
    :cond_b
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v5, v10

    goto :goto_6

    .line 260
    .restart local v5    # "max":F
    :cond_c
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v10, :cond_d

    .line 261
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setX(F)V

    .line 265
    :goto_7
    invoke-direct {p0, v8, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->findInterceptingView(FLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "affectedView":Landroid/view/View;
    if-nez v0, :cond_e

    .line 267
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 263
    .end local v0    # "affectedView":Landroid/view/View;
    :cond_d
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setY(F)V

    goto :goto_7

    .line 269
    .restart local v0    # "affectedView":Landroid/view/View;
    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->switchId(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_2

    .line 270
    .end local v0    # "affectedView":Landroid/view/View;
    .end local v2    # "buttonSize":F
    .end local v5    # "max":F
    .end local v6    # "min":F
    .end local v8    # "pos":F
    .end local v9    # "viewParent":Landroid/view/ViewGroup;
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 272
    :cond_10
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 273
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p1, v10}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-nez v10, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 276
    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    .line 277
    .local v3, "isSmallButton":Z
    new-instance v4, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-direct {v4, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 279
    .local v4, "list":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v12, 0x7f09003c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;

    invoke-direct {v11, p0, p1, v4, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;Z)V

    invoke-virtual {v10, v4, v11}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    new-instance v12, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 297
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    .line 298
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d8

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 299
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 300
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 311
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "isSmallButton":Z
    .end local v4    # "list":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    :goto_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    goto/16 :goto_2

    .line 303
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 305
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v10, :cond_12

    .line 306
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setX(F)V

    goto :goto_8

    .line 308
    :cond_12
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setY(F)V

    goto :goto_8
.end method

.method protected saveKeys()V
    .locals 8

    .prologue
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 346
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v4, v4

    add-int/lit8 v5, v0, 0x1

    sub-int v1, v4, v5

    .line 347
    .local v1, "idIndex":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 348
    .local v2, "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    if-eqz v0, :cond_0

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "idIndex":I
    .end local v2    # "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :cond_1
    move v1, v0

    .line 346
    goto :goto_1

    .line 351
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nav_buttons"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 353
    return-void
.end method

.method public setEditMode(Z)V
    .locals 7
    .param p1, "editMode"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    .line 175
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 176
    .local v3, "id":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 177
    .local v1, "button":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setEditMode(Z)V

    .line 179
    if-eqz p1, :cond_1

    move-object v5, p0

    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 182
    .end local v1    # "button":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_2
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_3
    return-void
.end method

.method protected updateKeys()V
    .locals 18

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "nav_buttons"

    const/16 v17, -0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "saved":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 363
    const-string v13, "empty|back|home|recent|empty|menu0"

    .line 366
    :cond_0
    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "buttons":[Ljava/lang/String;
    array-length v15, v4

    sget-object v16, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 368
    const-string v15, "empty|back|home|recent|empty|menu0"

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 371
    :cond_1
    const/4 v14, 0x0

    .line 373
    .local v14, "visibleCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v15, v15

    if-ge v5, v15, :cond_7

    .line 374
    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    aget v7, v15, v5

    .line 375
    .local v7, "id":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v15, :cond_4

    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v15, v15

    sub-int/2addr v15, v5

    add-int/lit8 v8, v15, -0x1

    .line 376
    .local v8, "index":I
    :goto_1
    array-length v15, v4

    if-ge v8, v15, :cond_5

    aget-object v11, v4, v8

    .line 377
    .local v11, "key":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 378
    .local v3, "buttonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    .line 379
    .local v10, "isSmallButton":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 381
    .local v2, "button":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .local v1, "arr$":[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    array-length v12, v1

    .local v12, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v12, :cond_2

    aget-object v9, v1, v6

    .line 382
    .local v9, "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 383
    move-object v2, v9

    .line 388
    .end local v9    # "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    invoke-virtual {v3, v2, v15, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    .line 389
    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v2, v15, :cond_3

    if-nez v10, :cond_3

    .line 390
    add-int/lit8 v14, v14, 0x1

    .line 393
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setTranslationX(F)V

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "arr$":[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v2    # "button":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v3    # "buttonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v6    # "i$":I
    .end local v8    # "index":I
    .end local v10    # "isSmallButton":Z
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "len$":I
    :cond_4
    move v8, v5

    .line 375
    goto :goto_1

    .line 376
    .restart local v8    # "index":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 381
    .restart local v1    # "arr$":[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .restart local v2    # "button":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .restart local v3    # "buttonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .restart local v6    # "i$":I
    .restart local v9    # "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .restart local v10    # "isSmallButton":Z
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "len$":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 397
    .end local v1    # "arr$":[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v2    # "button":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v3    # "buttonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v6    # "i$":I
    .end local v7    # "id":I
    .end local v8    # "index":I
    .end local v9    # "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .end local v10    # "isSmallButton":Z
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->isDevicePhone(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->adjustPadding(I)V

    .line 400
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateLowLights(I)V

    .line 401
    return-void
.end method

.method protected updateLowLights(I)V
    .locals 9
    .param p1, "visibleCount"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 439
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v8, 0x7f080043

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 440
    .local v2, "lowLights":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 442
    .local v3, "totalViews":I
    const/4 v4, 0x0

    .local v4, "v":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 443
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "currentView":Landroid/view/View;
    instance-of v5, v1, Landroid/widget/ImageView;

    if-nez v5, :cond_1

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 448
    :cond_1
    if-gtz p1, :cond_2

    .line 449
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :goto_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "blank":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 457
    if-lez p1, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 451
    .end local v0    # "blank":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 452
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .restart local v0    # "blank":Landroid/view/View;
    :cond_3
    move v5, v7

    .line 457
    goto :goto_3

    .line 460
    .end local v0    # "blank":Landroid/view/View;
    .end local v1    # "currentView":Landroid/view/View;
    :cond_4
    return-void
.end method
