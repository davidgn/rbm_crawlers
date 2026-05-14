.class public final Lz2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LZ2/l;

.field public b:LZ2/l;

.field public c:LZ2/l;

.field public d:LZ2/l;

.field public e:Lz2/c;

.field public f:Lz2/c;

.field public g:Lz2/c;

.field public h:Lz2/c;

.field public i:Lz2/e;

.field public j:Lz2/e;

.field public k:Lz2/e;

.field public l:Lz2/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/j;->a:LZ2/l;

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/j;->b:LZ2/l;

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/j;->c:LZ2/l;

    new-instance v0, Lz2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/j;->d:LZ2/l;

    new-instance v0, Lz2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    iput-object v0, p0, Lz2/j;->e:Lz2/c;

    new-instance v0, Lz2/a;

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    iput-object v0, p0, Lz2/j;->f:Lz2/c;

    new-instance v0, Lz2/a;

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    iput-object v0, p0, Lz2/j;->g:Lz2/c;

    new-instance v0, Lz2/a;

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    iput-object v0, p0, Lz2/j;->h:Lz2/c;

    new-instance v0, Lz2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    iput-object v0, p0, Lz2/j;->i:Lz2/e;

    new-instance v0, Lz2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    iput-object v0, p0, Lz2/j;->j:Lz2/e;

    new-instance v0, Lz2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    iput-object v0, p0, Lz2/j;->k:Lz2/e;

    new-instance v0, Lz2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/e;-><init>(I)V

    iput-object v0, p0, Lz2/j;->l:Lz2/e;

    return-void
.end method

.method public static b(LZ2/l;)V
    .locals 1

    instance-of v0, p0, Lz2/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of p0, p0, Lz2/d;

    return-void
.end method


# virtual methods
.method public final a()Lz2/k;
    .locals 2

    new-instance v0, Lz2/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lz2/j;->a:LZ2/l;

    iput-object v1, v0, Lz2/k;->a:LZ2/l;

    iget-object v1, p0, Lz2/j;->b:LZ2/l;

    iput-object v1, v0, Lz2/k;->b:LZ2/l;

    iget-object v1, p0, Lz2/j;->c:LZ2/l;

    iput-object v1, v0, Lz2/k;->c:LZ2/l;

    iget-object v1, p0, Lz2/j;->d:LZ2/l;

    iput-object v1, v0, Lz2/k;->d:LZ2/l;

    iget-object v1, p0, Lz2/j;->e:Lz2/c;

    iput-object v1, v0, Lz2/k;->e:Lz2/c;

    iget-object v1, p0, Lz2/j;->f:Lz2/c;

    iput-object v1, v0, Lz2/k;->f:Lz2/c;

    iget-object v1, p0, Lz2/j;->g:Lz2/c;

    iput-object v1, v0, Lz2/k;->g:Lz2/c;

    iget-object v1, p0, Lz2/j;->h:Lz2/c;

    iput-object v1, v0, Lz2/k;->h:Lz2/c;

    iget-object v1, p0, Lz2/j;->i:Lz2/e;

    iput-object v1, v0, Lz2/k;->i:Lz2/e;

    iget-object v1, p0, Lz2/j;->j:Lz2/e;

    iput-object v1, v0, Lz2/k;->j:Lz2/e;

    iget-object v1, p0, Lz2/j;->k:Lz2/e;

    iput-object v1, v0, Lz2/k;->k:Lz2/e;

    iget-object v1, p0, Lz2/j;->l:Lz2/e;

    iput-object v1, v0, Lz2/k;->l:Lz2/e;

    return-object v0
.end method
