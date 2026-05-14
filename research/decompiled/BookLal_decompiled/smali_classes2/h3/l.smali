.class public final Lh3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/v;

.field public final b:Lh3/A;

.field public final c:Lh3/a;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lh3/v;Landroid/widget/ImageView;Lh3/A;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/l;->a:Lh3/v;

    iput-object p3, p0, Lh3/l;->b:Lh3/A;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lh3/a;

    iget-object p1, p1, Lh3/v;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lh3/a;-><init>(Lh3/l;Landroid/widget/ImageView;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lh3/l;->c:Lh3/a;

    iput p4, p0, Lh3/l;->d:I

    iput-object p5, p0, Lh3/l;->e:Ljava/lang/String;

    iput-object p0, p0, Lh3/l;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh3/l;->c:Lh3/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
