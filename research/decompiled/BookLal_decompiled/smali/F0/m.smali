.class public final LF0/m;
.super LF0/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:LF0/n;


# direct methods
.method public constructor <init>(LF0/n;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF0/m;->e:LF0/n;

    iput-object p2, p0, LF0/m;->a:Ljava/lang/Object;

    iput-object p3, p0, LF0/m;->b:Ljava/util/ArrayList;

    iput-object p4, p0, LF0/m;->c:Ljava/lang/Object;

    iput-object p5, p0, LF0/m;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(LF0/r;)V
    .locals 0

    invoke-virtual {p1, p0}, LF0/r;->v(LF0/q;)V

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LF0/m;->e:LF0/n;

    iget-object v2, p0, LF0/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, LF0/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, LF0/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v2, p0, LF0/m;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v3, p0, LF0/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, LF0/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
