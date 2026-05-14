.class public final LC4/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LC4/A;I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LC4/G;->c:Ljava/lang/Object;

    iput p2, p0, LC4/G;->a:I

    iput-object p3, p0, LC4/G;->d:Ljava/lang/Object;

    iput p4, p0, LC4/G;->b:I

    return-void
.end method

.method public constructor <init>(LQ4/y;I)V
    .locals 2

    .line 3
    sget-object v0, Lh3/F;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, LC4/G;-><init>(Landroid/graphics/Bitmap;LQ4/y;II)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;LQ4/y;II)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_3

    .line 6
    iput-object p1, p0, LC4/G;->c:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, LC4/G;->d:Ljava/lang/Object;

    .line 8
    const-string p1, "loadedFrom == null"

    if-eqz p3, :cond_2

    iput p3, p0, LC4/G;->a:I

    .line 9
    iput p4, p0, LC4/G;->b:I

    return-void

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
