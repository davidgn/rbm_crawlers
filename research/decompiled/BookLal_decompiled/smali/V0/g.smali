.class public final LV0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LV0/g;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:LV0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LV0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LV0/g;->c:LV0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LV0/h;->f:LW2/B;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LW2/B;->v(LV0/g;Ljava/lang/Thread;)V

    return-void
.end method
