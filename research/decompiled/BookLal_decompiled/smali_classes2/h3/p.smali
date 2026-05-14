.class public final Lh3/p;
.super Lh3/g;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "orientation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh3/p;->d:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lh3/p;->c:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lh3/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final b(Lh3/A;)Z
    .locals 2

    iget v0, p0, Lh3/p;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p1, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lh3/A;I)LC4/G;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lh3/p;->c:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lh3/g;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, LL4/l;->D(Ljava/io/InputStream;)LQ4/c;

    move-result-object v2

    new-instance v3, LC4/G;

    new-instance v4, Ld0/e;

    iget-object v0, v0, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ld0/e;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    invoke-virtual {v4, v0}, Ld0/e;->d(Ljava/lang/String;)Ld0/b;

    move-result-object v0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v4, v4, Ld0/e;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ld0/b;->e(Ljava/nio/ByteOrder;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-direct {v3, v0, v2, v4, v5}, LC4/G;-><init>(Landroid/graphics/Bitmap;LQ4/y;II)V

    return-object v3

    :pswitch_0
    iget-object v8, v1, Lh3/g;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v3, v0, Lh3/A;->a:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_1
    sget-object v4, Lh3/p;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v12, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v11, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move v12, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-object v2, v11

    goto :goto_4

    :goto_3
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catch_2
    :goto_4
    if-eqz v2, :cond_3

    goto :goto_2

    :goto_5
    iget-object v13, v0, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {v9, v13}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    if-eqz v2, :cond_5

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v10, v14

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lh3/A;->a()Z

    move-result v2

    const/4 v15, 0x2

    if-eqz v2, :cond_15

    const/4 v7, 0x3

    iget v2, v0, Lh3/A;->c:I

    iget v3, v0, Lh3/A;->d:I

    const/16 v4, 0x60

    if-gt v2, v4, :cond_6

    if-gt v3, v4, :cond_6

    move v6, v14

    goto :goto_6

    :cond_6
    const/16 v4, 0x200

    if-gt v2, v4, :cond_7

    const/16 v2, 0x180

    if-gt v3, v2, :cond_7

    move v6, v15

    goto :goto_6

    :cond_7
    move v6, v7

    :goto_6
    if-nez v10, :cond_8

    if-ne v6, v7, :cond_8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LL4/l;->D(Ljava/io/InputStream;)LQ4/c;

    move-result-object v0

    new-instance v2, LC4/G;

    invoke-direct {v2, v11, v0, v15, v12}, LC4/G;-><init>(Landroid/graphics/Bitmap;LQ4/y;II)V

    goto/16 :goto_f

    :cond_8
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lh3/C;->c(Lh3/A;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    iput-boolean v14, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x1

    if-eq v6, v2, :cond_b

    const/4 v2, 0x2

    if-eq v6, v2, :cond_a

    const/4 v2, 0x3

    if-ne v6, v2, :cond_9

    const/4 v2, -0x1

    :goto_7
    move/from16 v16, v2

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    throw v0

    :cond_a
    const/16 v2, 0x200

    goto :goto_7

    :cond_b
    const/16 v2, 0x60

    goto :goto_7

    :goto_8
    const/4 v2, 0x1

    if-eq v6, v2, :cond_e

    const/4 v2, 0x2

    if-eq v6, v2, :cond_d

    const/4 v2, 0x3

    if-ne v6, v2, :cond_c

    const/4 v2, -0x1

    :goto_9
    move/from16 v17, v2

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    throw v0

    :cond_d
    const/16 v2, 0x180

    goto :goto_9

    :cond_e
    const/16 v2, 0x60

    goto :goto_9

    :goto_a
    iget v2, v0, Lh3/A;->c:I

    iget v7, v0, Lh3/A;->d:I

    move-object/from16 v18, v3

    move v3, v7

    move/from16 v19, v12

    move-wide v11, v4

    move/from16 v4, v16

    move/from16 v5, v17

    move v7, v6

    move-object/from16 v6, v18

    move v15, v7

    const/4 v14, 0x3

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lh3/C;->a(IIIILandroid/graphics/BitmapFactory$Options;Lh3/A;)V

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq v15, v2, :cond_11

    const/4 v3, 0x2

    if-eq v15, v3, :cond_10

    if-ne v15, v0, :cond_f

    move v0, v3

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    throw v0

    :cond_10
    move v0, v2

    :cond_11
    :goto_b
    if-eqz v10, :cond_13

    if-ne v15, v14, :cond_12

    move-object/from16 v2, v18

    const/4 v14, 0x1

    goto :goto_c

    :cond_12
    move v14, v0

    move-object/from16 v2, v18

    :goto_c
    invoke-static {v9, v11, v12, v14, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    :cond_13
    move-object/from16 v2, v18

    invoke-static {v9, v11, v12, v0, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_14

    new-instance v2, LC4/G;

    move/from16 v10, v19

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4, v10}, LC4/G;-><init>(Landroid/graphics/Bitmap;LQ4/y;II)V

    goto :goto_f

    :cond_14
    move/from16 v10, v19

    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_e

    :cond_15
    move-object v3, v11

    move v10, v12

    move v4, v15

    :goto_e
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LL4/l;->D(Ljava/io/InputStream;)LQ4/c;

    move-result-object v0

    new-instance v2, LC4/G;

    invoke-direct {v2, v3, v0, v4, v10}, LC4/G;-><init>(Landroid/graphics/Bitmap;LQ4/y;II)V

    :goto_f
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
