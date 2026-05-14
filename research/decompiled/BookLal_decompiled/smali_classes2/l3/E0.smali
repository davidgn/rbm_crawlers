.class public final Ll3/E0;
.super Lj3/i;
.source "SourceFile"


# instance fields
.field public d:LR0/i;

.field public final synthetic e:Ll3/L0;


# direct methods
.method public constructor <init>(Ll3/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/E0;->e:Ll3/L0;

    return-void
.end method


# virtual methods
.method public final a(LJ2/e;)Lj3/P;
    .locals 3

    iget-object v0, p0, Ll3/E0;->e:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    iget-boolean v1, v0, Ll3/L0;->H:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Channel is being terminated"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    new-instance v1, Ll3/K0;

    invoke-direct {v1, v0, p1, p0}, Ll3/K0;-><init>(Ll3/L0;LJ2/e;Ll3/E0;)V

    return-object v1
.end method

.method public final b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Ll3/E0;->e:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->g:Ll3/J0;

    return-object v0
.end method

.method public final c()Lj3/w0;
    .locals 1

    iget-object v0, p0, Ll3/E0;->e:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Ll3/E0;->e:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    new-instance v1, LA2/h;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, LA2/h;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lj3/q;Lj3/B;)V
    .locals 3

    iget-object v0, p0, Ll3/E0;->e:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    const-string v1, "newState"

    invoke-static {p1, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newPicker"

    invoke-static {p2, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LJ/k;

    const/16 v2, 0xc

    invoke-direct {v1, p0, p2, p1, v2}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {p1, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
