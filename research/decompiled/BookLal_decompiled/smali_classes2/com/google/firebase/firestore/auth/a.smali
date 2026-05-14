.class public final synthetic Lcom/google/firebase/firestore/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/auth/a;->a:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/auth/a;->a:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->a(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method public onAppCheckTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/auth/a;->a:Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->b(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method
