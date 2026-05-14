.class public final Lcom/google/android/recaptcha/internal/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/webkit/WebView;

.field private final zzb:Lt4/u;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lt4/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbc;->zza:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzbc;->zzb:Lt4/u;

    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/recaptcha/internal/zzbc;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbc;->zza:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public final varargs zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzbc;->zzb:Lt4/u;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzbb;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/google/android/recaptcha/internal/zzbb;-><init>([Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzbc;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lt4/w;->l(Lt4/u;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
