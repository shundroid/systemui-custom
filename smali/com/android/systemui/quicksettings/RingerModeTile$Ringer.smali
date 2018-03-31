.class Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
.super Ljava/lang/Object;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/RingerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ringer"
.end annotation


# instance fields
.field final mDrawable:I

.field final mRingerMode:I

.field final mVibrateWhenRinging:Z


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "vibrateWhenRinging"    # Z
    .param p3, "drawable"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-boolean p2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    .line 201
    iput p1, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    .line 202
    iput p3, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mDrawable:I

    .line 203
    return-void
.end method
