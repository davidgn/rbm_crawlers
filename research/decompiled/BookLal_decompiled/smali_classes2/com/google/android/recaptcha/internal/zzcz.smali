.class final Lcom/google/android/recaptcha/internal/zzcz;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzda;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/recaptcha/internal/zzcz;

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-direct {p1, v0, p2}, Lcom/google/android/recaptcha/internal/zzcz;-><init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzcz;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object p2, LY3/j;->a:LY3/j;

    check-cast p1, Lcom/google/android/recaptcha/internal/zzcz;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzcz;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zza:I

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zzu;->zza:Lcom/google/android/recaptcha/internal/zzu;

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzda;->zza(Lcom/google/android/recaptcha/internal/zzda;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v1}, Lcom/google/android/recaptcha/internal/zzda;->zzj(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v2}, Lcom/google/android/recaptcha/internal/zzda;->zza(Lcom/google/android/recaptcha/internal/zzda;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "18.1.2"

    invoke-static {v7, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "k="

    const-string v9, "&pk="

    const-string v10, "&mst="

    invoke-static {v8, v1, v9, v2, v10}, LC/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&msv="

    const-string v8, "&msi="

    invoke-static {v1, v6, v2, v7, v8}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mov="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v4, Lcom/google/android/recaptcha/internal/zzkw;->zzb:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzh(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zza(Lcom/google/android/recaptcha/internal/zzda;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v4}, Lcom/google/android/recaptcha/internal/zzda;->zzc(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzr;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/recaptcha/internal/zzai;->zzc(Lcom/google/android/recaptcha/internal/zzaf;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;)V

    new-instance v2, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v6, Lcom/google/android/recaptcha/internal/zzkw;->zzc:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzh(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzda;->zzj(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v4}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zza()Lt4/u;

    move-result-object v2

    new-instance v3, Lcom/google/android/recaptcha/internal/zzcy;

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/google/android/recaptcha/internal/zzcy;-><init>(Lcom/google/android/recaptcha/internal/zzda;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3}, Lt4/w;->l(Lt4/u;Lkotlin/jvm/functions/Function2;)V

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzda;->zze(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzdk;->zzd()Lcom/google/android/recaptcha/internal/zzdk;

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzda;->zze(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzdk;->zze()Lcom/google/android/recaptcha/internal/zzdk;

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzda;->zzb()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzda;->zzc(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzr;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzda;->zzm()Lt4/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzda;->zzm()Lt4/k;

    move-result-object p1

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/recaptcha/internal/zzcz;->zza:I

    check-cast p1, Lt4/l;

    invoke-virtual {p1, p0}, Lt4/l;->R(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, LY3/j;->a:LY3/j;

    new-instance v0, LY3/g;

    invoke-direct {v0, p1}, LY3/g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
