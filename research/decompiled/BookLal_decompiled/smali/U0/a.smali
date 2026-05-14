.class public final LU0/a;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:LL0/l;

.field public final synthetic d:Ljava/util/UUID;


# direct methods
.method public constructor <init>(LL0/l;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, LU0/a;->c:LL0/l;

    iput-object p2, p0, LU0/a;->d:Ljava/util/UUID;

    invoke-direct {p0}, LU0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, LU0/a;->c:LL0/l;

    iget-object v1, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lv0/h;->c()V

    :try_start_0
    iget-object v2, p0, LU0/a;->d:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LU0/c;->a(LL0/l;Ljava/lang/String;)V

    invoke-virtual {v1}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lv0/h;->f()V

    iget-object v1, v0, LL0/l;->c:Landroidx/work/b;

    iget-object v2, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, LL0/l;->f:Ljava/util/List;

    invoke-static {v1, v2, v0}, LL0/d;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lv0/h;->f()V

    throw v0
.end method
