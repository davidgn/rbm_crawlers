.class public final LC1/b;
.super LI0/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/view/LayoutInflater;

.field public c:LF1/b;

.field public d:J

.field public e:J

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textAlign"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput p3, p0, LC1/b;->f:I

    iput p4, p0, LC1/b;->g:I

    iput p5, p0, LC1/b;->h:I

    iput p6, p0, LC1/b;->i:I

    iput p7, p0, LC1/b;->j:I

    iput-object p8, p0, LC1/b;->k:Ljava/lang/String;

    iput-object p9, p0, LC1/b;->l:Ljava/lang/String;

    iput-object p2, p0, LC1/b;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, LC1/b;->b:Landroid/view/LayoutInflater;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "textAlign"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4a5c9fc

    if-eq v0, v1, :cond_1

    const v1, 0x7645c055

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CENTER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x11

    goto :goto_1

    :cond_1
    const-string v0, "RIGHT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x3

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LC1/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    const/4 v0, 0x0

    throw v0
.end method
