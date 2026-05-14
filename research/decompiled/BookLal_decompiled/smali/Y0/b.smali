.class public final LY0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/b;->a:I

    iput-object p1, p0, LY0/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    const/16 v0, 0xf

    iget-object v1, p0, LY0/b;->b:Ljava/lang/Object;

    iget v2, p0, LY0/b;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    check-cast v1, LY0/S;

    iget-object v0, v1, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/ShowBookDetailsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v0, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->x:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/SellingItems;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/bumptech/glide/h;->D:Z

    iget-object v3, v1, Lcom/booklal/booklal/SellingItems;->F:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/bumptech/glide/h;->D:Z

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->E:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/PublicProfileActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/PublicProfileActivity;->r:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/ProfilePhotoViewActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/ProfilePhotoViewActivity;->c:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Void;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSuccess: user profile ic created for user"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, LE2/h;

    iget-object v0, v1, LE2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivityTAG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    check-cast p1, Landroid/net/Uri;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v1, LY0/b0;

    iget-object v0, v1, LY0/b0;->c:Lcom/booklal/booklal/Edit_Profile_Activity;

    iget-object v2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v1, v1, LY0/b0;->c:Lcom/booklal/booklal/Edit_Profile_Activity;

    iget-object v3, v1, Lcom/booklal/booklal/Edit_Profile_Activity;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->t:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v0, v1, Lcom/booklal/booklal/Edit_Profile_Activity;->t:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "profileURL"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void

    :pswitch_5
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/Edit_Profile_Activity;

    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/Edit_Profile_Activity;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_6
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/Dashboard;

    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    invoke-static {v1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->x:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Void;

    const-string p1, "UTF-8"

    const-string v2, "token="

    check-cast v1, LY0/B;

    iget-object v3, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v3, LY0/C;

    iget-object v3, v3, LY0/C;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/database/DatabaseReference;

    new-instance v4, LC4/o;

    invoke-direct {v4, p0, v0}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/C;

    iget-object v3, v1, LY0/C;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/database/DatabaseReference;

    new-instance v4, LK0/j;

    invoke-direct {v4, p0, v0}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    iget-object v0, v1, LY0/C;->e:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    iget-object v1, v0, Lcom/booklal/booklal/ChatActivity;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, LC4/C;

    invoke-direct {v1}, LC4/C;-><init>()V

    sget-object v3, LC4/A;->c:Ljava/util/regex/Pattern;

    const-string v3, "application/x-www-form-urlencoded"

    invoke-static {v3}, LL4/l;->z(Ljava/lang/String;)LC4/A;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/booklal/booklal/ChatActivity;->x:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&title="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/booklal/booklal/ChatActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sent you a message."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&body="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/booklal/booklal/ChatActivity;->w:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "content"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, LW2/B;->j(Ljava/lang/String;LC4/A;)LC4/G;

    move-result-object p1

    new-instance v2, LC4/E;

    invoke-direct {v2}, LC4/E;-><init>()V

    const-string v4, "https://api.bitactro.com/api"

    invoke-virtual {v2, v4}, LC4/E;->p(Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v2, v4, p1}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    const-string p1, "Content-Type"

    invoke-virtual {v2, p1, v3}, LC4/E;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ts"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, LC4/E;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/booklal/booklal/ChatActivity;->x:Ljava/lang/String;

    const-string v0, "tk"

    invoke-virtual {v2, v0, p1}, LC4/E;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, LC4/E;->b()LC4/F;

    move-result-object p1

    new-instance v0, LG4/i;

    invoke-direct {v0, v1, p1}, LG4/i;-><init>(LC4/C;LC4/F;)V

    new-instance p1, Ld3/a;

    const/16 v1, 0xc

    invoke-direct {p1, v1}, Ld3/a;-><init>(I)V

    invoke-virtual {v0, p1}, LG4/i;->e(LC4/j;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encoding error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_8
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/CategorySelection;

    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v2, v1, Lcom/booklal/booklal/CategorySelection;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    invoke-static {v1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lr1/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr1/h;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/CategorySelection;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/net/Uri;

    check-cast v1, Lcom/booklal/booklal/AllChatsActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v2, v1, Lcom/booklal/booklal/AllChatsActivity;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/AllChatsActivity;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/net/Uri;

    check-cast v1, LY0/c;

    iget-object v0, v1, LY0/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/AdNotificationActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, v1, LY0/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/AdNotificationActivity;

    iget-object v0, v0, Lcom/booklal/booklal/AdNotificationActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
