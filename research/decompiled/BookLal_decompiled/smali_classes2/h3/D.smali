.class public final Lh3/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC4/o;

.field public final b:Lh/c;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(LC4/o;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/D;->a:LC4/o;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lh3/F;->a:Ljava/lang/StringBuilder;

    new-instance v1, Lh3/t;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lh3/t;-><init>(Landroid/os/Looper;I)V

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Lh/c;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lh/c;-><init>(Landroid/os/Looper;Ljava/lang/Object;I)V

    iput-object v0, p0, Lh3/D;->b:Lh/c;

    return-void
.end method


# virtual methods
.method public final a()Lh3/E;
    .locals 28

    move-object/from16 v0, p0

    new-instance v25, Lh3/E;

    iget-object v1, v0, Lh3/D;->a:LC4/o;

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lh3/m;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-wide v4, v0, Lh3/D;->c:J

    iget-wide v6, v0, Lh3/D;->d:J

    iget-wide v8, v0, Lh3/D;->e:J

    iget-wide v10, v0, Lh3/D;->f:J

    iget-wide v12, v0, Lh3/D;->g:J

    iget-wide v14, v0, Lh3/D;->h:J

    move-wide/from16 v26, v4

    iget-wide v4, v0, Lh3/D;->i:J

    move-wide/from16 v16, v4

    iget-wide v4, v0, Lh3/D;->j:J

    move-wide/from16 v18, v4

    iget v1, v0, Lh3/D;->k:I

    move/from16 v20, v1

    iget v1, v0, Lh3/D;->l:I

    move/from16 v21, v1

    iget v1, v0, Lh3/D;->m:I

    move/from16 v22, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v25

    move-wide/from16 v4, v26

    invoke-direct/range {v1 .. v24}, Lh3/E;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method
