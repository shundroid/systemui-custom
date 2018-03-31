.class public final Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
.super Ljava/lang/Object;
.source "NavbarEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonInfo"
.end annotation


# instance fields
.field public contentDescription:I

.field public displayId:I

.field private final key:Ljava/lang/String;

.field public keyCode:I

.field public landResource:I

.field public portResource:I

.field public sideResource:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rId"    # I
    .param p3, "cD"    # I
    .param p4, "mC"    # I
    .param p5, "pR"    # I
    .param p6, "lR"    # I
    .param p7, "sR"    # I

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    .line 485
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->displayId:I

    .line 486
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->contentDescription:I

    .line 487
    iput p4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->keyCode:I

    .line 488
    iput p5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->portResource:I

    .line 489
    iput p6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->landResource:I

    .line 490
    iput p7, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->sideResource:I

    .line 491
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ButtonInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
