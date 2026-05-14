.class public final LB1/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:LA2/h;


# direct methods
.method public constructor <init>(Landroid/os/Handler;LA2/h;)V
    .locals 0

    iput-object p1, p0, LB1/a;->a:Landroid/os/Handler;

    iput-object p2, p0, LB1/a;->b:LA2/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LB1/a;->a:Landroid/os/Handler;

    iget-object v1, p0, LB1/a;->b:LA2/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
