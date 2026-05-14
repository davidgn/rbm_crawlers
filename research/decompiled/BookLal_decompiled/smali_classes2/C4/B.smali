.class public final LC4/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR0/i;

.field public final b:LC4/o;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:LD4/a;

.field public final f:Z

.field public final g:LC4/b;

.field public final h:Z

.field public final i:Z

.field public final j:LC4/b;

.field public k:LC4/h;

.field public final l:LC4/b;

.field public final m:LC4/b;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:LP4/c;

.field public final r:LC4/l;

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR0/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LR0/i;-><init>(I)V

    iput-object v0, p0, LC4/B;->a:LR0/i;

    new-instance v0, LC4/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC4/o;-><init>(I)V

    iput-object v0, p0, LC4/B;->b:LC4/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC4/B;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC4/B;->d:Ljava/util/ArrayList;

    new-instance v0, LD4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    iput-object v0, p0, LC4/B;->e:LD4/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, LC4/B;->f:Z

    sget-object v1, LC4/b;->a:LC4/b;

    iput-object v1, p0, LC4/B;->g:LC4/b;

    iput-boolean v0, p0, LC4/B;->h:Z

    iput-boolean v0, p0, LC4/B;->i:Z

    sget-object v0, LC4/b;->b:LC4/b;

    iput-object v0, p0, LC4/B;->j:LC4/b;

    sget-object v0, LC4/b;->c:LC4/b;

    iput-object v0, p0, LC4/B;->l:LC4/b;

    iput-object v1, p0, LC4/B;->m:LC4/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LC4/B;->n:Ljavax/net/SocketFactory;

    sget-object v0, LC4/C;->G:Ljava/util/List;

    iput-object v0, p0, LC4/B;->o:Ljava/util/List;

    sget-object v0, LC4/C;->F:Ljava/util/List;

    iput-object v0, p0, LC4/B;->p:Ljava/util/List;

    sget-object v0, LP4/c;->a:LP4/c;

    iput-object v0, p0, LC4/B;->q:LP4/c;

    sget-object v0, LC4/l;->c:LC4/l;

    iput-object v0, p0, LC4/B;->r:LC4/l;

    const/16 v0, 0x2710

    iput v0, p0, LC4/B;->s:I

    iput v0, p0, LC4/B;->t:I

    iput v0, p0, LC4/B;->u:I

    return-void
.end method
