.class public final LF0/t;
.super LF0/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr/b;

.field public final synthetic b:LF0/u;


# direct methods
.method public constructor <init>(LF0/u;Lr/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF0/t;->b:LF0/u;

    iput-object p2, p0, LF0/t;->a:Lr/b;

    return-void
.end method


# virtual methods
.method public final c(LF0/r;)V
    .locals 3

    iget-object v0, p0, LF0/t;->b:LF0/u;

    iget-object v0, v0, LF0/u;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LF0/t;->a:Lr/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LF0/r;->v(LF0/q;)V

    return-void
.end method
