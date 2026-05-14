.class public final Lcom/bumptech/glide/c;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final j:Lcom/bumptech/glide/a;


# instance fields
.field public final a:Lf1/f;

.field public final b:Lcom/bumptech/glide/f;

.field public final c:Lz2/e;

.field public final d:Lz2/e;

.field public final e:Ljava/util/List;

.field public final f:Lr/b;

.field public final g:Le1/n;

.field public final h:I

.field public i:Lu1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lw1/b;->b:Lw1/a;

    iput-object v1, v0, Lcom/bumptech/glide/a;->a:Lw1/a;

    sput-object v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/f;Lcom/bumptech/glide/f;Lz2/e;Lz2/e;Lr/b;Ljava/util/List;Le1/n;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/c;->a:Lf1/f;

    iput-object p3, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    iput-object p4, p0, Lcom/bumptech/glide/c;->c:Lz2/e;

    iput-object p5, p0, Lcom/bumptech/glide/c;->d:Lz2/e;

    iput-object p7, p0, Lcom/bumptech/glide/c;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/c;->f:Lr/b;

    iput-object p8, p0, Lcom/bumptech/glide/c;->g:Le1/n;

    const/4 p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/c;->h:I

    return-void
.end method
