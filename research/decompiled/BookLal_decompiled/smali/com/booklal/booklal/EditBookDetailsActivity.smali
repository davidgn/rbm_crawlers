.class public Lcom/booklal/booklal/EditBookDetailsActivity;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static final synthetic c0:I


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:Landroid/widget/EditText;

.field public C:Landroid/widget/EditText;

.field public D:Landroid/widget/EditText;

.field public E:Landroid/widget/EditText;

.field public F:Landroid/widget/EditText;

.field public G:Landroid/widget/EditText;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/ImageView;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/Button;

.field public M:Landroid/widget/Switch;

.field public N:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Lcom/google/firebase/storage/FirebaseStorage;

.field public S:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public T:Lcom/google/firebase/storage/StorageReference;

.field public U:Lcom/google/firebase/firestore/DocumentReference;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/Boolean;

.field public X:Ljava/lang/Boolean;

.field public Y:Ljava/lang/Boolean;

.field public Z:Ljava/lang/Boolean;

.field public a0:Landroid/net/Uri;

.field public b:Landroid/widget/TextView;

.field public b0:Landroid/net/Uri;

.field public c:Landroid/widget/ImageView;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    return-void
.end method

.method public static j(Lcom/booklal/booklal/EditBookDetailsActivity;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Take Picture"

    aput-object v2, v1, v0

    const-string v2, "Choose from Gallery"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Cancel"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Add Photo"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, LY0/Y;

    invoke-direct {v3, p0, v1, v0}, LY0/Y;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final k()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG_"

    const-string v2, "_"

    invoke-static {v1, v0, v2}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method public final l()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/booklal/booklal/EditBookDetailsActivity;->k()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->d(Lh/i;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/F;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    const-string p2, "Error Msg:\n"

    const-string v0, "Uploading..."

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-int/2addr v4, p3

    div-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    :goto_1
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    invoke-static {p3, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->V:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->a0:Landroid/net/Uri;

    :cond_4
    iget-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->b0:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_4
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_8

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "path of image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :catch_1
    move-exception p3

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->a0:Landroid/net/Uri;

    :cond_9
    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->b0:Landroid/net/Uri;

    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_c
    :goto_8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0026

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->b:Landroid/widget/TextView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->b:Landroid/widget/TextView;

    const-string v0, "Edit Book Details"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bookKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->t:Ljava/lang/String;

    const-string v0, "bName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->e:Ljava/lang/String;

    const-string v0, "bDesc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->f:Ljava/lang/String;

    const-string v0, "bPub"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->l:Ljava/lang/String;

    const-string v0, "bAuthor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    const-string v0, "bURL1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->q:Ljava/lang/String;

    const-string v0, "bURL2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->r:Ljava/lang/String;

    const-string v0, "bCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->p:Ljava/lang/String;

    const-string v0, "bSP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->n:Ljava/lang/String;

    const-string v0, "bPP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->o:Ljava/lang/String;

    const-string v0, "bPhone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->s:Ljava/lang/Boolean;

    const-string v0, "cat"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "bSymbol"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->Q:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    :cond_0
    const p1, 0x7f090187

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->B:Landroid/widget/EditText;

    const p1, 0x7f090185

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->D:Landroid/widget/EditText;

    const p1, 0x7f090188

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->C:Landroid/widget/EditText;

    const p1, 0x7f090184

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    const p1, 0x7f0903e6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    const p1, 0x7f0903e8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    const p1, 0x7f0903e2

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    const p1, 0x7f0903e3

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    const p1, 0x7f0903e4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->L:Landroid/widget/Button;

    const p1, 0x7f0903df

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->H:Landroid/widget/TextView;

    const p1, 0x7f0903e0

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->I:Landroid/widget/TextView;

    const p1, 0x7f0903e1

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->M:Landroid/widget/Switch;

    const p1, 0x7f0903de

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->N:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->T:Lcom/google/firebase/storage/StorageReference;

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->N:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setCountry(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->N:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setShowCurrency(Ljava/lang/Boolean;)V

    new-instance p1, Ljava/util/Locale;

    const-string v0, "en"

    iget-object v1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->p:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->O:Ljava/lang/String;

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->S:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->B:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->D:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->C:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->M:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->M:Landroid/widget/Switch;

    const-string v0, "Yes"

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->M:Landroid/widget/Switch;

    const-string v0, "No"

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->N:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    new-instance v0, LY0/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/T;-><init>(Lh/i;I)V

    invoke-virtual {p1, v0}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setOnClickListener(Lg3/a;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->c:Landroid/widget/ImageView;

    new-instance v0, LY0/U;

    invoke-direct {v0, p0, v1}, LY0/U;-><init>(Lcom/booklal/booklal/EditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->J:Landroid/widget/ImageView;

    new-instance v0, LY0/U;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/U;-><init>(Lcom/booklal/booklal/EditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->K:Landroid/widget/ImageView;

    new-instance v0, LY0/U;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/U;-><init>(Lcom/booklal/booklal/EditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/EditBookDetailsActivity;->L:Landroid/widget/Button;

    new-instance v0, LY0/U;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/U;-><init>(Lcom/booklal/booklal/EditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/F;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/booklal/booklal/EditBookDetailsActivity;->l()V

    :cond_0
    return-void
.end method
