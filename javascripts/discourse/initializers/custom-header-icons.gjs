
import { apiInitializer } from "discourse/lib/api";
import dIcon from "discourse-common/helpers/d-icon";

export default apiInitializer("1.34.0", (api) => {
  api.headerIcons.add(
    "custom-header-home",
    <template>
      <li>
        <a id="graduation-cap" class="icon" href="https://example.com/" title="Learning Center">
      1123
        </a>
      </li>
    </template>,
    { after: "home-logo" }
  );
});