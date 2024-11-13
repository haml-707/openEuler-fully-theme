import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.34.0", (api) => {
  // const logoSmallUrl = settings.Alternative_small_logo_url || "";
  // const logoUrl = settings.Alternative_logo_url || "";
  // const mobileLogoUrl = settings.Alternative_mobile_logo_url || "";
  let colorSchemeOverride = localStorage.getItem(
    "discourse_color_scheme_override"
  );
  console.log("初始的discourse_color_scheme_override值：", colorSchemeOverride);

  // 定义一个函数来处理值变化时的操作
  function handleColorSchemeChange() {
    colorSchemeOverride = localStorage.getItem(
      "discourse_color_scheme_override"
    );
    console.log(
      "discourse_color_scheme_override值已改变，新值为：",
      colorSchemeOverride
    );
  }

  // 监听storage事件，当localStorage发生变化时触发
  window.addEventListener("storage", function (event) {
    if (event.key === "discourse_color_scheme_override") {
      handleColorSchemeChange();
    }
  });
  const language = document.documentElement.lang;
  console.log(language);
  api.renderInOutlet("home-logo-contents", <template>
    <a class="forum-logo" href="/">
      <img
        src="https://openeuler-website-beijing.obs.cn-north-4.myhuaweicloud.com/detail-banner/forum.png"
      />
    </a>
    <span class="divid"></span>
    <a
      class="openeuler-logo"
      href="https://www.openeuler.org/zh/"
      target="_blank"
    >
      <img
        src="https://openeuler-website-beijing.obs.cn-north-4.myhuaweicloud.com/detail-banner/openeuler.png"
      />
    </a>
  </template>);
});
