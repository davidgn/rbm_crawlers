.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile n:Lcom/bumptech/glide/b;

.field public static volatile o:Z


# instance fields
.field public final a:Lf1/a;

.field public final b:Lg1/e;

.field public final c:Lcom/bumptech/glide/c;

.field public final d:Lcom/bumptech/glide/f;

.field public final e:Lf1/f;

.field public final f:Lr1/h;

.field public final l:Lz2/e;

.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le1/n;Lg1/e;Lf1/a;Lf1/f;Lr1/h;Lz2/e;Lz2/e;Lr/b;Ljava/util/List;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    iput-object v8, v1, Lcom/bumptech/glide/b;->a:Lf1/a;

    iput-object v9, v1, Lcom/bumptech/glide/b;->e:Lf1/f;

    move-object/from16 v2, p3

    iput-object v2, v1, Lcom/bumptech/glide/b;->b:Lg1/e;

    move-object/from16 v2, p6

    iput-object v2, v1, Lcom/bumptech/glide/b;->f:Lr1/h;

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/bumptech/glide/b;->l:Lz2/e;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Lcom/bumptech/glide/f;

    invoke-direct {v11}, Lcom/bumptech/glide/f;-><init>()V

    iput-object v11, v1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/f;

    new-instance v2, Ll1/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v11, Lcom/bumptech/glide/f;->g:Li1/D;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Li1/D;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Ll1/s;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v4, v11, Lcom/bumptech/glide/f;->g:Li1/D;

    monitor-enter v4

    :try_start_1
    iget-object v5, v4, Li1/D;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-virtual {v11}, Lcom/bumptech/glide/f;->e()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lp1/a;

    invoke-direct {v4, v0, v3, v8, v9}, Lp1/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lf1/a;Lf1/f;)V

    new-instance v5, Ll1/C;

    new-instance v6, Ly3/c;

    const/16 v7, 0x17

    invoke-direct {v6, v7}, Ly3/c;-><init>(I)V

    invoke-direct {v5, v8, v6}, Ll1/C;-><init>(Lf1/a;Ll1/B;)V

    new-instance v6, Ll1/o;

    invoke-virtual {v11}, Lcom/bumptech/glide/f;->e()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-direct {v6, v7, v12, v8, v9}, Ll1/o;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lf1/a;Lf1/f;)V

    new-instance v7, Ll1/e;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v12}, Ll1/e;-><init>(Ll1/o;I)V

    new-instance v12, Ll1/a;

    const/4 v13, 0x2

    invoke-direct {v12, v13, v6, v9}, Ll1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ln1/b;

    invoke-direct {v13, v0}, Ln1/b;-><init>(Landroid/content/Context;)V

    new-instance v14, Li1/x;

    const/4 v15, 0x1

    invoke-direct {v14, v10, v15}, Li1/x;-><init>(Landroid/content/res/Resources;I)V

    new-instance v15, Li1/y;

    const/4 v1, 0x1

    invoke-direct {v15, v10, v1}, Li1/y;-><init>(Landroid/content/res/Resources;I)V

    new-instance v1, Li1/y;

    move/from16 p3, v2

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Li1/y;-><init>(Landroid/content/res/Resources;I)V

    new-instance v2, Li1/x;

    const/4 v0, 0x0

    invoke-direct {v2, v10, v0}, Li1/x;-><init>(Landroid/content/res/Resources;I)V

    new-instance v0, Ll1/b;

    invoke-direct {v0, v9}, Ll1/b;-><init>(Lf1/f;)V

    move-object/from16 p6, v2

    new-instance v2, LG4/n;

    move-object/from16 p7, v15

    const/4 v15, 0x5

    invoke-direct {v2, v15}, LG4/n;-><init>(I)V

    new-instance v15, Lq1/c;

    move-object/from16 v16, v2

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Lq1/c;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v17, v15

    new-instance v15, Li1/A;

    move-object/from16 v18, v2

    const/4 v2, 0x5

    invoke-direct {v15, v2}, Li1/A;-><init>(I)V

    const-class v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v2, v15}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Lb1/c;)V

    new-instance v15, LC4/o;

    move-object/from16 v19, v1

    const/16 v1, 0x1d

    invoke-direct {v15, v9, v1}, LC4/o;-><init>(Ljava/lang/Object;I)V

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v11, v1, v15}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Lb1/c;)V

    const-string v15, "Bitmap"

    move-object/from16 v20, v14

    const-class v14, Landroid/graphics/Bitmap;

    invoke-virtual {v11, v15, v2, v14, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    invoke-virtual {v11, v15, v1, v14, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    move-object/from16 v21, v13

    new-instance v13, Ll1/e;

    move-object/from16 v22, v3

    const/4 v3, 0x1

    invoke-direct {v13, v6, v3}, Ll1/e;-><init>(Ll1/o;I)V

    const-class v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11, v15, v3, v14, v13}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    invoke-virtual {v11, v15, v3, v14, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v6, Ll1/C;

    new-instance v13, Ly3/c;

    move-object/from16 v23, v4

    const/16 v4, 0x16

    invoke-direct {v13, v4}, Ly3/c;-><init>(I)V

    invoke-direct {v6, v8, v13}, Ll1/C;-><init>(Lf1/a;Ll1/B;)V

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v11, v15, v4, v14, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    sget-object v6, Li1/A;->b:Li1/A;

    invoke-virtual {v11, v14, v14, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v13, Ll1/z;

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Ll1/z;-><init>(I)V

    invoke-virtual {v11, v15, v14, v14, v13}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    invoke-virtual {v11, v14, v0}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lb1/k;)V

    new-instance v4, Ll1/a;

    invoke-direct {v4, v10, v7}, Ll1/a;-><init>(Landroid/content/res/Resources;Lb1/j;)V

    const-string v7, "BitmapDrawable"

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v7, v2, v13, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v4, Ll1/a;

    invoke-direct {v4, v10, v12}, Ll1/a;-><init>(Landroid/content/res/Resources;Lb1/j;)V

    invoke-virtual {v11, v7, v1, v13, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v4, Ll1/a;

    invoke-direct {v4, v10, v5}, Ll1/a;-><init>(Landroid/content/res/Resources;Lb1/j;)V

    invoke-virtual {v11, v7, v3, v13, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v4, Lj3/G;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v8, v0}, Lj3/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v13, v4}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lb1/k;)V

    new-instance v0, Lp1/i;

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    invoke-direct {v0, v4, v5, v9}, Lp1/i;-><init>(Ljava/util/ArrayList;Lp1/a;Lf1/f;)V

    const-string v4, "Gif"

    const-class v12, Lp1/c;

    invoke-virtual {v11, v4, v1, v12, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    invoke-virtual {v11, v4, v2, v12, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v0, Ld3/a;

    const/16 v4, 0x19

    invoke-direct {v0, v4}, Ld3/a;-><init>(I)V

    invoke-virtual {v11, v12, v0}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lb1/k;)V

    const-class v0, La1/d;

    invoke-virtual {v11, v0, v0, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v4, Ln1/b;

    invoke-direct {v4, v8}, Ln1/b;-><init>(Lf1/a;)V

    invoke-virtual {v11, v15, v0, v14, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    const-string v0, "legacy_append"

    const-class v4, Landroid/net/Uri;

    const-class v15, Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, v21

    invoke-virtual {v11, v0, v4, v15, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v7, Ll1/a;

    move-object/from16 v21, v12

    const/4 v12, 0x1

    invoke-direct {v7, v12, v5, v8}, Ll1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v4, v14, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v5, Lc1/h;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Lc1/h;-><init>(I)V

    invoke-virtual {v11, v5}, Lcom/bumptech/glide/f;->g(Lc1/f;)V

    new-instance v5, Li1/A;

    const/4 v7, 0x6

    invoke-direct {v5, v7}, Li1/A;-><init>(I)V

    const-class v7, Ljava/io/File;

    invoke-virtual {v11, v7, v2, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/f;

    new-instance v12, Li1/A;

    const/16 v8, 0x9

    invoke-direct {v12, v8}, Li1/A;-><init>(I)V

    invoke-direct {v5, v12}, LB/y;-><init>(Li1/A;)V

    invoke-virtual {v11, v7, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Ll1/z;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Ll1/z;-><init>(I)V

    invoke-virtual {v11, v0, v7, v7, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v5, Li1/f;

    new-instance v8, Li1/A;

    const/16 v12, 0x8

    invoke-direct {v8, v12}, Li1/A;-><init>(I)V

    invoke-direct {v5, v8}, LB/y;-><init>(Li1/A;)V

    invoke-virtual {v11, v7, v3, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v7, v7, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Lc1/m;

    invoke-direct {v5, v9}, Lc1/m;-><init>(Lf1/f;)V

    invoke-virtual {v11, v5}, Lcom/bumptech/glide/f;->g(Lc1/f;)V

    new-instance v5, Lc1/h;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Lc1/h;-><init>(I)V

    invoke-virtual {v11, v5}, Lcom/bumptech/glide/f;->g(Lc1/f;)V

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v8, v20

    invoke-virtual {v11, v5, v1, v8}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    move-object/from16 v12, v19

    invoke-virtual {v11, v5, v3, v12}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v11, v9, v1, v8}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v9, v3, v12}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    move-object/from16 v8, p7

    invoke-virtual {v11, v9, v4, v8}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    move-object/from16 v12, p6

    move-object/from16 p6, v13

    move-object/from16 v13, v24

    invoke-virtual {v11, v5, v13, v12}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v9, v13, v12}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v5, v4, v8}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, LC4/o;

    const/16 v8, 0x1b

    invoke-direct {v5, v8}, LC4/o;-><init>(I)V

    const-class v8, Ljava/lang/String;

    invoke-virtual {v11, v8, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, LC4/o;

    const/16 v9, 0x1b

    invoke-direct {v5, v9}, LC4/o;-><init>(I)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/A;

    const/16 v9, 0xd

    invoke-direct {v5, v9}, Li1/A;-><init>(I)V

    invoke-virtual {v11, v8, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/A;

    const/16 v9, 0xc

    invoke-direct {v5, v9}, Li1/A;-><init>(I)V

    invoke-virtual {v11, v8, v3, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/A;

    const/16 v9, 0xb

    invoke-direct {v5, v9}, Li1/A;-><init>(I)V

    invoke-virtual {v11, v8, v13, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Lz2/e;

    const/16 v8, 0x14

    invoke-direct {v5, v8}, Lz2/e;-><init>(I)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v5, v8}, Li1/b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, LC4/o;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/16 v9, 0x1a

    invoke-direct {v5, v8, v9}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11, v4, v3, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, LL0/f;

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-direct {v5, v9, v8}, LL0/f;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, LG2/i;

    const/4 v8, 0x3

    invoke-direct {v5, v9, v8}, LG2/i;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    const/16 v5, 0x1d

    move/from16 v8, p3

    if-lt v8, v5, :cond_0

    new-instance v5, Lj1/d;

    invoke-direct {v5, v9, v1}, Lh/w;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Lj1/d;

    invoke-direct {v5, v9, v3}, Lh/w;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v4, v3, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    :cond_0
    new-instance v5, Li1/C;

    const/4 v8, 0x1

    move-object/from16 v12, v18

    invoke-direct {v5, v12, v8}, Li1/C;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v11, v4, v1, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v5, Li1/D;

    const/4 v8, 0x0

    invoke-direct {v5, v12, v8}, Li1/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11, v4, v3, v5}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, Li1/C;

    const/4 v5, 0x0

    invoke-direct {v3, v12, v5}, Li1/C;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v11, v4, v13, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, Li1/A;

    const/16 v5, 0xe

    invoke-direct {v3, v5}, Li1/A;-><init>(I)V

    invoke-virtual {v11, v4, v1, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, Ld3/a;

    const/16 v5, 0x15

    invoke-direct {v3, v5}, Ld3/a;-><init>(I)V

    const-class v5, Ljava/net/URL;

    invoke-virtual {v11, v5, v1, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, LG2/i;

    const/4 v5, 0x2

    invoke-direct {v3, v9, v5}, LG2/i;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v11, v4, v7, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, Lj1/a;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lj1/a;-><init>(I)V

    const-class v5, Li1/g;

    invoke-virtual {v11, v5, v1, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v3, Li1/A;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Li1/A;-><init>(I)V

    const-class v8, [B

    invoke-virtual {v11, v8, v2, v3}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v2, Li1/A;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Li1/A;-><init>(I)V

    invoke-virtual {v11, v8, v1, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v4, v4, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    invoke-virtual {v11, v15, v15, v6}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Ljava/lang/Class;Li1/r;)V

    new-instance v1, Ll1/z;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ll1/z;-><init>(I)V

    invoke-virtual {v11, v0, v15, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v0, Li1/x;

    const/4 v1, 0x2

    invoke-direct {v0, v10, v1}, Li1/x;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v1, p6

    invoke-virtual {v11, v14, v1, v0}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lq1/a;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v8, v0}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lq1/a;)V

    new-instance v12, LJ2/e;

    const/16 v6, 0x17

    const/4 v7, 0x0

    move-object v2, v12

    move-object/from16 v3, p4

    move-object v4, v0

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v7}, LJ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v11, v15, v8, v12}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lq1/a;)V

    move-object/from16 v0, v17

    move-object/from16 v2, v21

    invoke-virtual {v11, v2, v8, v0}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lq1/a;)V

    new-instance v0, Ll1/C;

    new-instance v2, Lz2/e;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lz2/e;-><init>(I)V

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2}, Ll1/C;-><init>(Lf1/a;Ll1/B;)V

    const-class v2, Ljava/nio/ByteBuffer;

    const-string v3, "legacy_append"

    invoke-virtual {v11, v3, v2, v14, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v2, Ll1/a;

    invoke-direct {v2, v10, v0}, Ll1/a;-><init>(Landroid/content/res/Resources;Lb1/j;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-string v3, "legacy_append"

    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb1/j;)V

    new-instance v6, Lz2/e;

    const/16 v0, 0x1c

    invoke-direct {v6, v0}, Lz2/e;-><init>(I)V

    new-instance v0, Lcom/bumptech/glide/c;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v11

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lf1/f;Lcom/bumptech/glide/f;Lz2/e;Lz2/e;Lr/b;Ljava/util/List;Le1/n;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    return-void

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 29

    sget-boolean v0, Lcom/bumptech/glide/b;->o:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->o:Z

    new-instance v10, Lr/b;

    invoke-direct {v10}, Lr/k;-><init>()V

    new-instance v9, Lz2/e;

    const/16 v1, 0x11

    invoke-direct {v9, v1}, Lz2/e;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v1, "Got app info metadata: "

    const-string v2, "ManifestParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Got null app info metadata"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "GlideModule"

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Landroid/support/v4/media/session/a;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Finished loading Glide modules"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->K()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->K()Ljava/util/Set;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7
    :goto_2
    const-string v1, "Glide"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_9
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    sget v1, Lh1/c;->c:I

    const/4 v2, 0x4

    if-nez v1, :cond_a

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lh1/c;->c:I

    :cond_a
    sget v16, Lh1/c;->c:I

    const-string v1, "source"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v5, Lh1/b;

    const/4 v11, 0x0

    invoke-direct {v5, v1, v11}, Lh1/b;-><init>(Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move-object v14, v3

    move/from16 v15, v16

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lh1/c;

    invoke-direct {v1, v3}, Lh1/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string v3, "disk-cache"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v23, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lh1/b;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Lh1/b;-><init>(Ljava/lang/String;Z)V

    const-wide/16 v20, 0x0

    move-object/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v8

    move-object/from16 v22, v4

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lh1/c;

    invoke-direct {v3, v5}, Lh1/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v5, Lh1/c;->c:I

    if-nez v5, :cond_b

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, Lh1/c;->c:I

    :cond_b
    sget v5, Lh1/c;->c:I

    if-lt v5, v2, :cond_c

    move/from16 v19, v6

    goto :goto_4

    :cond_c
    move/from16 v19, v0

    :goto_4
    const-string v2, "animation"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v23, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v6, Lh1/b;

    invoke-direct {v6, v2, v0}, Lh1/b;-><init>(Ljava/lang/String;Z)V

    const-wide/16 v20, 0x0

    move-object/from16 v17, v5

    move/from16 v18, v19

    move-object/from16 v22, v4

    move-object/from16 v24, v6

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lh1/c;

    invoke-direct {v0, v5}, Lh1/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v2, Lg1/f;

    invoke-direct {v2, v12}, Lg1/f;-><init>(Landroid/content/Context;)V

    new-instance v5, Lg1/g;

    invoke-direct {v5, v2}, Lg1/g;-><init>(Lg1/f;)V

    new-instance v8, Lz2/e;

    const/16 v2, 0x19

    invoke-direct {v8, v2}, Lz2/e;-><init>(I)V

    iget v2, v5, Lg1/g;->a:I

    if-lez v2, :cond_d

    new-instance v6, Lf1/g;

    int-to-long v14, v2

    invoke-direct {v6, v14, v15}, Lf1/g;-><init>(J)V

    goto :goto_5

    :cond_d
    new-instance v2, Ly3/c;

    const/16 v6, 0x13

    invoke-direct {v2, v6}, Ly3/c;-><init>(I)V

    move-object v6, v2

    :goto_5
    new-instance v7, Lf1/f;

    iget v2, v5, Lg1/g;->c:I

    invoke-direct {v7, v2}, Lf1/f;-><init>(I)V

    new-instance v14, Lg1/e;

    iget v2, v5, Lg1/g;->b:I

    move-object/from16 p0, v12

    int-to-long v11, v2

    invoke-direct {v14, v11, v12}, Ly1/h;-><init>(J)V

    new-instance v2, LK0/j;

    const/16 v5, 0x19

    move-object/from16 v12, p0

    invoke-direct {v2, v12, v5}, LK0/j;-><init>(Landroid/content/Context;I)V

    new-instance v5, Le1/n;

    new-instance v11, Lh1/c;

    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v23, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object/from16 p0, v13

    new-instance v13, Lh1/b;

    move-object/from16 v16, v10

    const-string v10, "source-unlimited"

    move-object/from16 v28, v9

    const/4 v9, 0x0

    invoke-direct {v13, v10, v9}, Lh1/b;-><init>(Ljava/lang/String;Z)V

    sget-wide v20, Lh1/c;->b:J

    const/16 v18, 0x0

    const v19, 0x7fffffff

    move-object/from16 v17, v15

    move-object/from16 v22, v4

    move-object/from16 v24, v13

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v11, v15}, Lh1/c;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v21, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v1

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    invoke-direct/range {v21 .. v27}, Le1/n;-><init>(Lg1/e;LK0/j;Lh1/c;Lh1/c;Lh1/c;Lh1/c;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lr1/h;

    invoke-direct {v0}, Lr1/h;-><init>()V

    new-instance v13, Lcom/bumptech/glide/b;

    move-object v1, v13

    move-object v2, v12

    move-object v3, v5

    move-object v4, v14

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move v0, v9

    move-object/from16 v9, v28

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Le1/n;Lg1/e;Lf1/a;Lf1/f;Lr1/h;Lz2/e;Lz2/e;Lr/b;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v12, v13}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v13, Lcom/bumptech/glide/b;->n:Lcom/bumptech/glide/b;

    sput-boolean v0, Lcom/bumptech/glide/b;->o:Z

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/b;->n:Lcom/bumptech/glide/b;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    const-string v0, "Glide"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_4
    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->n:Lcom/bumptech/glide/b;

    if-nez v2, :cond_1

    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_5
    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_7
    sget-object p0, Lcom/bumptech/glide/b;->n:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lr1/h;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    iget-object p0, p0, Lcom/bumptech/glide/b;->f:Lr1/h;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/i;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr1/h;->e(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/widget/ImageView;)Lcom/bumptech/glide/i;
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ly1/k;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr1/h;->e(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v1, v2}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lr1/h;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr1/h;->e(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    goto/16 :goto_5

    :cond_1
    instance-of v2, v1, Landroidx/fragment/app/F;

    iget-object v3, v0, Lr1/h;->e:Ly3/c;

    const/4 v4, 0x0

    const v5, 0x1020002

    if-eqz v2, :cond_7

    check-cast v1, Landroidx/fragment/app/F;

    iget-object v2, v0, Lr1/h;->f:Lr/b;

    invoke-virtual {v2}, Lr/k;->clear()V

    invoke-virtual {v1}, Landroidx/fragment/app/F;->getSupportFragmentManager()Landroidx/fragment/app/Y;

    move-result-object v6

    iget-object v6, v6, Landroidx/fragment/app/Y;->c:Landroidx/fragment/app/h0;

    invoke-virtual {v6}, Landroidx/fragment/app/h0;->g()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v2}, Lr1/h;->c(Ljava/util/List;Lr/b;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v4

    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, p0, v4}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lr/k;->clear()V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {p0, v1}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ly1/k;->g()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr1/h;->e(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/Y;

    move-result-object p0

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, p0, v6, v2}, Lr1/h;->h(Landroidx/fragment/app/Y;Landroidx/fragment/app/Fragment;Z)Lr1/j;

    move-result-object p0

    iget-object v0, p0, Lr1/j;->e:Lcom/bumptech/glide/i;

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/i;

    iget-object v3, p0, Lr1/j;->a:Lr1/a;

    iget-object v4, p0, Lr1/j;->b:Lj1/a;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/b;Lr1/d;Lr1/i;Landroid/content/Context;)V

    iput-object v2, p0, Lr1/j;->e:Lcom/bumptech/glide/i;

    move-object p0, v2

    goto/16 :goto_5

    :cond_5
    :goto_2
    move-object p0, v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0, v1}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object p0

    goto/16 :goto_5

    :cond_7
    iget-object v2, v0, Lr1/h;->l:Lr/b;

    invoke-virtual {v2}, Lr/k;->clear()V

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v2}, Lr1/h;->b(Landroid/app/FragmentManager;Lr/b;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v4

    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v2, p0, v4}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {v2}, Lr/k;->clear()V

    if-nez v6, :cond_a

    invoke-virtual {v0, v1}, Lr1/h;->d(Landroid/app/Activity;)Lcom/bumptech/glide/i;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {}, Ly1/k;->g()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v6}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, p0, v6, v2}, Lr1/h;->g(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lr1/g;

    move-result-object p0

    iget-object v0, p0, Lr1/g;->d:Lcom/bumptech/glide/i;

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/i;

    iget-object v3, p0, Lr1/g;->a:Lr1/a;

    iget-object v4, p0, Lr1/g;->b:Li1/D;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/b;Lr1/d;Lr1/i;Landroid/content/Context;)V

    iput-object v2, p0, Lr1/g;->d:Lcom/bumptech/glide/i;

    move-object v0, v2

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr1/h;->e(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    sget-object v0, Ly1/k;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lg1/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ly1/h;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lf1/a;

    invoke-interface {v0}, Lf1/a;->l()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lf1/f;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lf1/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 8

    sget-object v0, Ly1/k;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lg1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0x28

    if-lt p1, v3, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ly1/h;->e(J)V

    goto :goto_1

    :cond_1
    if-ge p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-wide v4, v0, Ly1/h;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ly1/h;->e(J)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lf1/a;

    invoke-interface {v0, p1}, Lf1/a;->k(I)V

    iget-object v4, p0, Lcom/bumptech/glide/b;->e:Lf1/f;

    monitor-enter v4

    if-lt p1, v3, :cond_4

    :try_start_1
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :try_start_2
    invoke-virtual {v4, p1}, Lf1/f;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :cond_4
    if-ge p1, v2, :cond_5

    if-ne p1, v1, :cond_6

    :cond_5
    iget p1, v4, Lf1/f;->e:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v4, p1}, Lf1/f;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_2
    monitor-exit v4

    return-void

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
