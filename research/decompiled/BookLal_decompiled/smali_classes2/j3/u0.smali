.class public final Lj3/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj3/v0;

.field public final synthetic b:LB/h;

.field public final synthetic c:J

.field public final synthetic d:Lj3/w0;


# direct methods
.method public constructor <init>(Lj3/w0;Lj3/v0;LB/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/u0;->d:Lj3/w0;

    iput-object p2, p0, Lj3/u0;->a:Lj3/v0;

    iput-object p3, p0, Lj3/u0;->b:LB/h;

    iput-wide p4, p0, Lj3/u0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj3/u0;->d:Lj3/w0;

    iget-object v1, p0, Lj3/u0;->a:Lj3/v0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj3/u0;->b:LB/h;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(scheduled in SynchronizationContext with delay of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj3/u0;->c:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, LC/a;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
